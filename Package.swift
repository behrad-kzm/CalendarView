// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CalendarView",
    platforms: [
      .iOS(.v10),
    ],
    products: [
        .library(
            name: "CalendarView",
            targets: ["CalendarView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
      .package(name: "SwiftMoment", url: "https://github.com/akosma/SwiftMoment.git", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CalendarView",
            dependencies: ["SwiftMoment"]),
        .testTarget(
            name: "CalendarViewTests",
            dependencies: ["CalendarView"]),
    ]
)
