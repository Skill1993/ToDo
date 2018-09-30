//
//  Extension.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 01/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
}
