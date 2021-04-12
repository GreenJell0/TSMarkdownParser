// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TSMarkdownParser",
    products: [
        .library(
            name: "TSMarkdownParser",
            targets: ["TSMarkdownParser", "TSMarkdownParserSwift"]
        )
    ],
    targets: [
        .target(
            name: "TSMarkdownParserSwift"
        ),
        .target(
            name: "TSMarkdownParser",
            exclude: [
                "TSMarkdownParser-Prefix.pch",
                "TSMarkdownParserLib-Bridging-Header.h",
                "TSMarkdownParserObjC.modulemap"
            ]
        ),
    ]
)
