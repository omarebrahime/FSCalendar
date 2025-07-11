// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FSCalendar",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "FSCalendar",
            targets: ["FSCalendar"]
        ),
    ],
    targets: [
        .target(
            name: "FSCalendar",
            dependencies: [],
            path: "FSCalendar", // Make sure this matches the folder containing FSCalendar sources
            exclude: ["Info.plist"]
        )
    ]
)
