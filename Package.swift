// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let frameworks = [
    "FirebaseAnalytics": "482a266e3b411999a8916372f794084fb3a5ba3a8a61e76fa3f53a0e5f926b08",
    "FirebaseAnalyticsSwift": "384e086fcf7c4d1fe3d479efe87a038ffdc64797eba573d555b62cbbb4e34401",
    "FirebaseCore": "b1122713389ed3adf8b0c431626e75bfef1a4e9878a72ed9dd7c94aa5fe514b7",
    "FirebaseCoreDiagnostics": "60769b5cb78c49a27aab5263a7a9e87b41a32c412097c5ab414d191578728156",
    "FirebaseCoreInternal": "0693a097e2ed2a304a18fa22f19c3d29fa57b49568a4a1e36446c215231ffdf4",
    "FirebaseInstallations": "c5710e4342b05e6e3c99d1f7f8e9ef0647eb4f4fc486d850a6b0776dca6d927a",
    "GoogleAppMeasurement": "c1cff08d06b83afaea358046b8193384235ad8d1882f9e7b1b6355a801839ae6",
    "GoogleAppMeasurementIdentitySupport": "60af595acda963209487a8ab897fd20c30765a669ed785e9fe42cada6ee8510a",
    "GoogleDataTransport": "b42489b8a27376cc2e98b4710bb205851b0f871af827967960f48e66a01ebe59",
    "GoogleUtilities": "ea69b324c999f3e7fc9f8032c997ec47681cb9393e81c13adf13c85f8058b657",
    "nanopb": "1e80db7726c580c50de99a7e00f302abef519135667639725991ced678dceeb6",
    "PromisesObjC": "f7d21b8540661b8f6fe1fb742924f091418a2af7a34dd44d181b1160de53c65c",
]

let package = Package(
    name: "FirebaseAnalitycsLight",
    products: [
        .library(
            name: "FirebaseAnalitycsLight",
            targets: Array(frameworks.keys)
        ),
    ],
    dependencies: [],
    targets: frameworks.map { frameworkName, checksum in
        .binaryTarget(
            name: frameworkName,
            url: "https://github.com/OrdynaryShark/podlodka-firebase-example/releases/download/0.0.2/\(frameworkName).xcframework.zip",
            checksum: checksum
        )
    }
)
