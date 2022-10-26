//
//  PodspecListenerImpl.swift
//  podspec-parser
//
//  Created by Azamat Farkhiev on 08.10.2022.
//

final class PodspecListenerImpl: PodspecBaseListener {
    
    private let storage: IGraphStorage
    
    init(storage: IGraphStorage) {
        self.storage = storage
    }
    
    override func exitSpec_body(_ ctx: PodspecParser.Spec_bodyContext) {
        guard let name = ctx.spec_name()?.name()?.getText(),
              let body = ctx.spec_body() else { return }
        
        let dependencies = iterateOverDependencies(body)
        for dependency in dependencies {
            storage.addEdge(from: name, to: dependency)
        }
    }
    
    private func iterateOverDependencies(_ ctx: PodspecParser.Spec_bodyContext) -> [String] {
        var bodyContext: PodspecParser.Spec_bodyContext? = ctx
        var dependencies = [String]()
        
        while let dependency = bodyContext?.spec_dependency()?.subspec()?.dependency()?.getText() {
            dependencies.append(dependency)
            bodyContext = bodyContext?.spec_body()
        }
        
        return dependencies
    }
}
