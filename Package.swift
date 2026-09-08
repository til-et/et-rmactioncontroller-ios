// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "RMActionController",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "RMActionController", targets: ["RMActionController"])
    ],
    targets: [
        .target(
            name: "RMActionController",
            path: "RMActionController",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore")
            ]
        )
    ]
)
