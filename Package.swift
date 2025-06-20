// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KochavaMeasurement", // the display name in the navigator
    platforms:
    [
        .iOS(.v14),
        .macCatalyst(.v14),
        .macOS(.v12),
        .tvOS(.v14),
        .visionOS(.v1),
        .watchOS(.v7)
    ],
    products:
    [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KochavaMeasurement",
            targets:
            [
                "KochavaMeasurement"
            ]
        ),
    ],
    dependencies:
    [
        // Dependencies declare other packages that this package depends on.
//        .package(
//            name: "Apple-SwiftPackage-KochavaNetworking-XCFramework",
//            path: "../Apple-SwiftPackage-KochavaNetworking-XCFramework"
//        )
        .package(
            url: "https://github.com/Kochava/Apple-SwiftPackage-KochavaNetworking-XCFramework",
            from: "9.1.0"
        )
    ],
    targets:
    [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "KochavaMeasurement",
            path: "KochavaMeasurement.xcframework"
        ),
        .testTarget(
            name: "KochavaMeasurementTests",
            dependencies:
            [
                .product(
                    name: "KochavaNetworking",
                    package: "Apple-SwiftPackage-KochavaNetworking-XCFramework"
                ),
                "KochavaMeasurement"
            ]
        ),
    ]
)
