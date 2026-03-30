import ProjectDescription

let project = Project(
    name: "App",
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.App",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: [
                .glob("App/Sources/**", excluding: ["App/Sources/**/*.json", "App/Sources/**/*.txt"]),
            ],
            resources: [
                "App/Sources/**/*.json",
                "App/Sources/**/*.txt",
            ],
            dependencies: []
        ),
    ],
    resourceSynthesizers: [
        .custom(name: "CustomFiles", parser: .json, extensions: ["json"]),
        .custom(name: "CustomFiles", parser: .files, extensions: ["txt"]),
    ]
)
