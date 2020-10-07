// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MnemonicKit",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v8)//,
    ],
    products: [
        .library(
            name: "MnemonicKit",
            targets: ["MnemonicKit_iOS", "MnemonicKit_macOS"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/krzyzanowskim/CryptoSwift", 
            from: "1.3.2"
        )
    ],
    targets: [
        .target(
            name: "MnemonicKit_iOS",
            dependencies: ["CryptoSwift"],
            path: "MnemonicKit",
            exclude: ["Info.plist"]),
    ]
)