// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Base32",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v2),
    ],
    products: [
        .library(
            name: "Base32",
            targets: ["Base32"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Base32",
            path: "Base32",
            exclude: ["main.m", "MF_AppDelegate.m"],
            sources: ["MF_Base32Additions.m"]
        ),
        .testTarget(
            name: "Base32Tests",
            dependencies: ["Base32"],
            path: "Base32Tests"
        )
    ]
)
