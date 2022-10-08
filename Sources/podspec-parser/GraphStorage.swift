//
//  GraphStorage.swift
//  podspec-parser
//
//  Created by Azamat Farkhiev on 08.10.2022.
//

import Foundation
import GraphViz

struct GraphStorage {
    
    private static var nodes: [String] = []
    
    private static var edges = Set<Edge>()
    
    static func addNode(_ name: String) {
        nodes.append(name)
    }
    
    static func addEdge(from: String, to: String) {
        edges.insert(Edge(from: from, to: to))
    }
    
    static func visualize() {
        var graph = Graph(directed: true)
        
        edges = edges.filter {
            nodes.contains($0.from) && nodes.contains($0.to)
        }
        for edge in edges {
            graph.append(edge)
        }
        graph.splines = .spline
        
        graph.render(using: .fdp, to: .svg) { result in
            guard case let .success(data) = result else { return }
            try? data.write(to: URL(fileURLWithPath: "/Users/a.farkhiev/developer/podspec-parser/Images/graph.svg"))
        }
    }
}
