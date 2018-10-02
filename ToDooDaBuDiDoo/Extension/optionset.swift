//
//  optionset.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 02/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import Foundation

struct ButtonOptions: OptionSet {
    let rawValue: Int
    
    static let roundedText = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon = ButtonOptions(rawValue: 1 << 1)
//    static let squareText = ButtonOptions(rawValue: 1 << 2)
}
