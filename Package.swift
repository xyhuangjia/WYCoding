// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "WYCoding",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "WYCoding", targets: ["WYCoding"])
    ],
    targets: [
        .target(
            name: "WYCoding",
            path: "Sources/WYCoding",
            publicHeadersPath: "include"
        )
    ]
)
