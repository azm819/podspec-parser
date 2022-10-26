//
//  GraphStorage.swift
//  podspec-parser
//
//  Created by Azamat Farkhiev on 08.10.2022.
//

import Foundation
import GraphViz

protocol IGraphStorage {
    
    var edges: Set<Edge> { get }
    
    func addEdge(from: String, to: String)
}

final class GraphStorage: IGraphStorage {
    
    private(set) var edges = Set<Edge>()
    
    func addEdge(from: String, to: String) {
        edges.insert(Edge(from: from, to: to))
    }
}
