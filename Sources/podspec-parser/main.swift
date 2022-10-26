
import Foundation
import Antlr4

let dirPath = "/Users/a.farkhiev/developer/podspec-parser/Sources/podspec-parser/podspecs-proccessed/"

let items = try FileManager.default.contentsOfDirectory(atPath: dirPath)

let storage = GraphStorage()
for item in items {
    let content = FileManager.default.contents(atPath: dirPath + item)!
    
    let stream = ANTLRInputStream(String(data: content, encoding: .utf8)!)
    let lexer = PodspecLexer(stream)
//    print(item)
    do {
        let parser = try PodspecParser(BufferedTokenStream(lexer))
        let expressionContext = try parser.global_scope()
        let listener = PodspecListenerImpl(storage: storage)
        try ParseTreeWalker().walk(listener, expressionContext)
    } catch {
//        print(item)
    }
}

let graphVisualizer = GraphVisualizer(storage: storage)
graphVisualizer.visualize(withColoring: true)
