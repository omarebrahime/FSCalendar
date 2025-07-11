// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FSCalendarr",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "FSCalendarr",
            targets: ["FSCalendarr"]
        ),
    ],
    targets: [
        .target(
            name: "FSCalendarr",
            dependencies: [],
            path: "FSCalendarr", // Make sure this matches the folder containing FSCalendar sources
            exclude: ["Info.plist"]
        )
    ]
)
