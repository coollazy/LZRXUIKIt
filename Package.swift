// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LZUIKitRx",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "LZUIKitRx",
            targets: ["LZUIKitRx"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/coollazy/LZUIKit.git", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.5.0")),
    ],
    targets: [
        .target(
            name: "LZUIKitRx",
            dependencies: [
                .product(name: "LZUIKit", package: "LZUIKit"),
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
            ]
        ),
        .testTarget(
            name: "LZUIKitRxTests",
            dependencies: [
                "LZUIKitRx"
            ]
        ),
    ]
)
