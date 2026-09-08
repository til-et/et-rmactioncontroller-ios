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
            cSettings: [
                // Every source file uses flat quoted imports (#import "RMAction.h")
                // regardless of which subfolder it's actually in — CocoaPods flattens
                // all headers into one shared search path; SPM doesn't, so each
                // subfolder needs to be an explicit header search path instead.
                .headerSearchPath("."),
                .headerSearchPath("Actions"),
                .headerSearchPath("Animations"),
                .headerSearchPath("Categories"),
                .headerSearchPath("Grouping Actions"),
                .headerSearchPath("Private")
            ],
            linkerSettings: [
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore")
            ]
        )
    ]
)
