import GraphViz
import Foundation
import Antlr4

var graph = Graph(directed: false)

let a = Node("aa"), b = Node("b"), c = Node("c")

graph.append(Edge(from: a, to: b))
graph.append(Edge(from: a, to: c))

var b_c = Edge(from: b, to: c)
b_c.constraint = false
graph.append(b_c)

// Render image to SVG using dot layout algorithm
graph.render(using: .neato, to: .svg) { result in
    guard case let .success(data) = result else { return }
    try? data.write(to: URL(fileURLWithPath: "/Users/a.farkhiev/developer/podspec-parser/Images/graph.svg"))
}

let dirPath = "/Users/a.farkhiev/developer/podspec-parser/Sources/podspec-parser/podspecs/"

let items = try FileManager.default.contentsOfDirectory(atPath: dirPath)

for item in items {
    let content = FileManager.default.contents(atPath: dirPath + item)!
    
    let stream = ANTLRInputStream(String(data: content, encoding: .utf8)!)
    let lexer = PodspecLexer(stream)
    let parser = try PodspecParser(BufferedTokenStream(lexer))
    let expressionContext = try parser.global_scope()
    let listener = PodspecBaseListener()
    try ParseTreeWalker().walk(listener, expressionContext)
}
