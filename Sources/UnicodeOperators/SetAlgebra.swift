//
//  SetAlgebra.swift
//  UnicodeOperators
//

infix operator ∈ : ComparisonPrecedence
infix operator ∉ : ComparisonPrecedence

infix operator ∋ : ComparisonPrecedence
infix operator ∌ : ComparisonPrecedence

infix operator ∩ : ComparisonPrecedence
infix operator ∪ : ComparisonPrecedence

infix operator ⊂ : ComparisonPrecedence
infix operator ⊃ : ComparisonPrecedence

infix operator ⊄ : ComparisonPrecedence
infix operator ⊅ : ComparisonPrecedence

infix operator ⊆ : ComparisonPrecedence
infix operator ⊇ : ComparisonPrecedence

infix operator ⊈ : ComparisonPrecedence
infix operator ⊉ : ComparisonPrecedence

infix operator ⊕ : ComparisonPrecedence

infix operator ∖ : ComparisonPrecedence

extension SetAlgebra {
	public static func ∈(lhs: Element, rhs: Self) -> Bool {
		return rhs.contains(lhs)
	}
	
	public static func ∉(lhs: Element, rhs: Self) -> Bool {
		return !rhs.contains(lhs)
	}
	
	public static func ∋(lhs: Self, rhs: Element) -> Bool {
		return lhs.contains(rhs)
	}
	
	public static func ∌(lhs: Self, rhs: Element) -> Bool {
		return !lhs.contains(rhs)
	}
	
	public static func ∩(lhs: Self, rhs: Self) -> Self {
		return lhs.intersection(rhs)
	}
	
	public static func ∪(lhs: Self, rhs: Self) -> Self {
		return lhs.union(rhs)
	}
	
	public static func ⊂(lhs: Self, rhs: Self) -> Bool {
		return lhs.isStrictSubset(of: rhs)
	}
	
	public static func ⊃(lhs: Self, rhs: Self) -> Bool {
		return lhs.isStrictSuperset(of: rhs)
	}
	
	public static func ⊄(lhs: Self, rhs: Self) -> Bool {
		return !lhs.isStrictSubset(of: rhs)
	}
	
	public static func ⊅(lhs: Self, rhs: Self) -> Bool {
		return !lhs.isStrictSuperset(of: rhs)
	}
	
	public static func ⊆(lhs: Self, rhs: Self) -> Bool {
		return lhs.isSubset(of: rhs)
	}
	
	public static func ⊇(lhs: Self, rhs: Self) -> Bool {
		return lhs.isSuperset(of: rhs)
	}
	
	public static func ⊈(lhs: Self, rhs: Self) -> Bool {
		return !lhs.isSubset(of: rhs)
	}
	
	public static func ⊉(lhs: Self, rhs: Self) -> Bool {
		return !lhs.isSuperset(of: rhs)
	}
	
	public static func ⊕(lhs: Self, rhs: Self) -> Self {
		return lhs.symmetricDifference(rhs)
	}
	
	public static func ∖(lhs: Self, rhs: Self) -> Self {
		return lhs.subtracting(rhs)
	}
}
