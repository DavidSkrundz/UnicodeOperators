//
//  Composition.swift
//  UnicodeOperators
//

infix operator ∘ : MultiplicationPrecedence

public func ∘<T, U, V>(lhs: @escaping (T) -> U,
                         rhs: @escaping (U) -> V) -> (T) -> V {
	return { T in rhs(lhs(T)) }
}
