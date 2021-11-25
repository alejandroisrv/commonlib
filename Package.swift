// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonLib",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CommonLib",
            targets: ["CommonLib"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "ZipArchive", url: "https://github.com/ZipArchive/ZipArchive.git", from: "2.4.2"),
        .package(name:"AEXML", url: "https://github.com/tadija/AEXML.git", from: "4.6.1")
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CommonLib",
            dependencies: ["AEXML", "ZipArchive"]),
        .testTarget(
            name: "CommonLibTests",
            dependencies: ["CommonLib"]),
    ]
)
