//
//  Solution.swift
//  codewars
//
//  Created by qxxl007 on 2019/3/18.
//  Copyright © 2019 lc. All rights reserved.
//

import Foundation

func tribonacci(_ signature: [Int], _ n: Int) -> [Int] {
    guard signature.count == 3 else { return [] }
    var tri: [Int] = []
    (0..<n).forEach {
        switch $0 {
        case 0..<3:
            tri.append(signature[$0])
        default:
            tri.append(tri[$0 - 3] + tri[$0 - 2] + tri[$0 - 1])
        }
    }
    return tri
}
