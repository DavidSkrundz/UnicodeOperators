// swift-tools-version:4.0
//
//  Package.swift
//  UnicodeOperators
//

import PackageDescription

let package = Package(
	name: "UnicodeOperators",
	products: [
		.library(
			name: "UnicodeOperators",
			type: .static,
			targets: ["UnicodeOperators"]),
		.library(
			name: "UnicodeOperators",
			type: .dynamic,
			targets: ["UnicodeOperators"]),
		],
	targets: [
		.target(
			name: "UnicodeOperators"),
		.testTarget(
			name: "UnicodeOperatorsTests",
			dependencies: ["UnicodeOperators"]),
		]
)
