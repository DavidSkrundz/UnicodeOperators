//
//  Comparable.swift
//  UnicodeOperators
//

infix operator ≤ : ComparisonPrecedence
infix operator ≥ : ComparisonPrecedence

infix operator ≮ : ComparisonPrecedence
infix operator ≯ : ComparisonPrecedence

infix operator ≰ : ComparisonPrecedence
infix operator ≱ : ComparisonPrecedence

extension Comparable {
	public static func ≤(lhs: Self, rhs: Self) -> Bool {
		return lhs <= rhs
	}
	
	public static func ≥(lhs: Self, rhs: Self) -> Bool {
		return lhs >= rhs
	}
	
	public static func ≮(lhs: Self, rhs: Self) -> Bool {
		return lhs >= rhs
	}
	
	public static func ≯(lhs: Self, rhs: Self) -> Bool {
		return lhs <= rhs
	}
	
	public static func ≰(lhs: Self, rhs: Self) -> Bool {
		return lhs > rhs
	}
	
	public static func ≱(lhs: Self, rhs: Self) -> Bool {
		return lhs < rhs
	}
}
