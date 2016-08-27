//
//  Equatable.swift
//  UnicodeOperators
//

infix operator ≠ : ComparisonPrecedence

extension Equatable {
	public static func ≠(lhs: Self, rhs: Self) -> Bool {
		return lhs != rhs
	}
}
