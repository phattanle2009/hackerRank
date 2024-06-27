//
//  TheTimeInTheWorld.swift
//  hackerRank
//
//  Created by Tan Phat LE on 27/6/24.
//

import UIKit

func timeInWords(h: Int, m: Int) -> String {
    // Write your code here
    if m == 0 {
        return "\(getTime(time: h)) o' clock"
    } else if m == 30 {
        return "half past \(getTime(time: h))"
    } else if m == 45 {
        return "quarter to \(getTime(time: h + 1))"
    } else if m == 15 {
        return "quarter past \(getTime(time: h))"
    } else if m >= 1 && m < 30 {
        return "\(getTime(time: m)) minute\(m > 1 ? "s" : "") past \(getTime(time: h))"
    } else {
        return "\(getTime(time: 60 - m)) minute\(m > 1 ? "s" : "") to \(getTime(time: h + 1))"
    }
}

func getTime(time: Int) -> String {
    switch time {
    case 0: return "zero"
    case 1: return "one"
    case 2: return "two"
    case 3: return "three"
    case 4: return "four"
    case 5: return "five"
    case 6: return "six"
    case 7: return "seven"
    case 8: return "eight"
    case 9: return "nine"
    case 10: return "ten"
    case 11: return "eleven"
    case 12: return "twelve"
    case 13: return "thirteen"
    case 14: return "fourteen"
    case 15: return "fifteen"
    case 16: return "sixten"
    case 17: return "seventeen"
    case 18: return "eightteen"
    case 19: return "nineteen"
    case 20: return "twenty"
    case 21: return "twenty one"
    case 22: return "twenty two"
    case 23: return "twenty three"
    case 24: return "twenty four"
    case 25: return "twenty five"
    case 26: return "twenty six"
    case 27: return "twenty seven"
    case 28: return "twenty eight"
    case 29: return "twenty nine"
    default:
        return "error"
    }
}

//timeInWords(h: 7, m: 15)
