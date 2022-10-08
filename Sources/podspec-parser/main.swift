
import Foundation
import Antlr4

let dirPath = "/Users/a.farkhiev/developer/podspec-parser/Sources/podspec-parser/podspecs-proccessed/"

let items = try FileManager.default.contentsOfDirectory(atPath: dirPath)

for item in items {
    let content = FileManager.default.contents(atPath: dirPath + item)!
    
    let stream = ANTLRInputStream(String(data: content, encoding: .utf8)!)
    let lexer = PodspecLexer(stream)
    do {
        let parser = try PodspecParser(BufferedTokenStream(lexer))
        let expressionContext = try parser.global_scope()
        let listener = PodspecListenerImpl()
        try ParseTreeWalker().walk(listener, expressionContext)
    } catch {
        print(item)
    }
}

GraphStorage.visualize()
