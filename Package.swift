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
            publicHeadersPath: "include",
            cSettings: [
                // Public headers live in include/RMActionController/ so consumers can use
                // <RMActionController/RMActionController.h> and SPM generates the module map
                // from that umbrella header. Every source file uses flat quoted imports
                // (#import "RMAction.h") regardless of which subfolder it's actually in.
                // SPM doesn't flatten headers into one shared search path, so each
                // subfolder needs to be an explicit header search path instead.
                .headerSearchPath("include/RMActionController"),
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
