//
//  Int+ProceduralKit.swift
//  ProceduralKit
//
//  Created by Rachel Brindle on 3/19/15.
//  Copyright (c) 2015 Rachel Brindle. All rights reserved.
//

public extension Int {
    public func isRelativelyPrimeTo(to: Int) -> Bool {
        return greatestCommonDivisor(self, to) == 1
    }

    public func isDivisibleBy(by: Int) -> Bool {
        return (self % by) == 0
    }

    public var primeFactors : Set<Int> {
        var ret = Set<Int>([1, self])

        var x = self
        var i = 2
        while i <= x {
            if x % i == 0 {
                ret.insert(i)
                x /= i
            } else {
                i++
            }
        }

        return ret
    }

    public var prime : Bool {
        if self < 1 {
            return false
        }
        return primeFactors.count == 2 // 1, itself
    }
}