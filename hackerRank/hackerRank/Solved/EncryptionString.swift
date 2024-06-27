//
//  EncryptionString.swift
//  hackerRank
//
//  Created by Tan Phat LE on 27/6/24.
//


import UIKit

func encryption(s: String) -> String {
    // Write your code here
    var a = s.replacingOccurrences(of: " ", with: "")
    let sqrt = sqrt(Double(a.count))
    let col = Int(ceil(sqrt))
    let row = Int(round(sqrt))
    var rsArray: [[String]] = []
    repeat {
        let b = "\(a.prefix(col))"
        rsArray.append(Array(spaceGen(text: "\(b)", length: col)).map({ "\($0)" }))
        a = a.replacingOccurrences(of: b, with: "")
    } while (a.count != 0)
    var rs = ""
    for iCol in 0..<col {
        var temp = ""
        for iRow in 0..<row {
            if rsArray[iRow][iCol] != " " {
                temp += rsArray[iRow][iCol]
            }
        }
        if !rs.isEmpty {
            rs += " "
        }
        rs += temp
        temp = ""
    }
    return rs
}

func spaceGen(text: String, length: Int) -> String {
    var rs = text
    for i in 0..<length - text.count {
        rs += " "
    }
    return rs
}

//encryption(s: "if man was meant to stay on the ground god would have given us roots")
