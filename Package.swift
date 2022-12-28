// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-msgpack-csm",
    platforms: [.macOS(.v10_15), .iOS(.v13)],
    products: [
        .library(
            name: "SwiftMsgpackCsm",
            targets: ["SwiftMsgpackCsm"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftMsgpackCsm",
            dependencies: []
        ),
        .executableTarget(
            name: "example",
            dependencies: [
                "SwiftMsgpackCsm",
            ],
            path: "Example"
        ),
        .testTarget(
            name: "SwiftMsgpackTests",
            dependencies: ["SwiftMsgpackCsm"]
        ),
    ]
)
