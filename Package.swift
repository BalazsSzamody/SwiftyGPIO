// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "SwiftyGPIO",
    dependencies: [
        .package(
            url: "https://github.com/ReactiveX/RxSwift",
            from: "5.0.1"),
    ],
    targets: [
        .target(
            name: "SwiftyGPIO",
            dependencies: []),
//        .target(
//            name: "RxSwiftyGPIO",
//            dependencies: ["SwiftyGPIO", "RxSwift"])
    ]
)
