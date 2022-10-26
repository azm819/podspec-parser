//
//  GraphVisualizer.swift
//  podspec-parser
//
//  Created by Azamat Farkhiev on 09.10.2022.
//

import Foundation
import GraphViz

final class GraphVisualizer {
    
    private let storage: IGraphStorage
    private var graph = Graph(directed: true, strict: true)
    
    init(storage: IGraphStorage) {
        self.storage = storage
    }
    
    func visualize(withColoring: Bool = false) {
//        edges = edges.filter {
//            nodes.contains($0.from) && nodes.contains($0.to)
//        }
        for edge in storage.edges {
            graph.append(edge)
        }
        graph.splines = .spline
        graph.overlap = "false"
        graph.overlapShrink = true
        graph.concentrate = true
        if withColoring {
            colorize()
        }
        
        graph.render(using: .fdp, to: .svg) { result in
            guard case let .success(data) = result else { return }
            try? data.write(to: URL(fileURLWithPath: "/Users/a.farkhiev/developer/podspec-parser/Images/graph.svg"))
        }
    }
    
    private func colorize() {
        var graphMap = [String: [String]]()
        var nodes = Set<String>()
        graph.edges.forEach {
            graphMap[$0.from] = graphMap[$0.from, default: []] + [$0.to]
            nodes.insert($0.from)
            nodes.insert($0.to)
        }
        var dependencies = [String: Int]()
        var visited = Set<String>()
        for node in nodes {
            dfs(
                currentNode: node,
                visited: &visited,
                dependencies: &dependencies,
                graph: graphMap
            )
        }
        let dependenciesValues = Array(Set(dependencies.values)).sorted()
        for node in nodes {
            setColor(
                for: node,
                graph: &graph,
                nodeDependencies: &dependencies,
                dependenciesValues: dependenciesValues
            )
        }
    }
    
    private func dfs(
        currentNode: String,
        visited: inout Set<String>,
        dependencies: inout [String: Int],
        graph: [String: [String]]
    ) {
        guard !visited.contains(currentNode) else { return }
        
        var nodeDependencies = 0
        for node in graph[currentNode, default: []] {
            dfs(currentNode: node, visited: &visited, dependencies: &dependencies, graph: graph)
            nodeDependencies += dependencies[node, default: .zero] + 1
        }
        dependencies[currentNode] = nodeDependencies
        visited.insert(currentNode)
    }
    
    private func setColor(
        for nodeId: String,
        graph: inout Graph,
        nodeDependencies: inout [String: Int],
        dependenciesValues: [Int]
    ) {
        var node = Node(nodeId)
        let dependencies = nodeDependencies[nodeId, default: .zero]
        let index = dependenciesValues.firstIndex(of: dependencies) ?? .zero
        node.set(percentage: Double(index + 1) / Double(dependenciesValues.count))
        graph.append(node)
    }
}

private extension Node {
    
    mutating func set(percentage: Double) {
        let percentage = min(1, percentage)
        if percentage <= 0.5 {
            let value = percentage * 2
            self.fillColor = .rgb(red: UInt8(255 * value), green: 255, blue: 0)
        } else {
            let value = (percentage - 0.5) * 2
            self.fillColor = .rgb(red: 255, green: UInt8(255 * (1 - value)), blue: 0)
        }
    }
}
