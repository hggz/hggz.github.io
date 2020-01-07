// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Hggzgithubio",
    products: [
        .executable(name: "Hggzgithubio", targets: ["Hggzgithubio"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "Hggzgithubio",
            dependencies: ["Publish"]
        )
    ]
)