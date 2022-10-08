// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "podspec-parser",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/SwiftDocOrg/GraphViz",
            from: "0.4.1"
        ),
        .package(path: "/Users/a.farkhiev/developer/antlr4"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "podspec-parser",
            dependencies: ["GraphViz", .product(name: "Antlr4", package: "antlr4")]),
        .testTarget(
            name: "podspec-parserTests",
            dependencies: ["podspec-parser"]),
    ]
)
