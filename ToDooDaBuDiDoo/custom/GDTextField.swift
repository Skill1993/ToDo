//
//  GDTextField.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 03/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class GDTextField: UITextField {
    
    var insets: UIEdgeInsets!
    
    init(frame: CGRect = .zero, placeholder:String = "placeholder", radius: CGFloat = 4, inset: CGFloat = 0) {
        super.init(frame: frame)
        checkIfAutoLayout()
        
        self.placeholder = placeholder
        self.backgroundColor = .white
        self.layer.cornerRadius = radius
        self.insets = UIEdgeInsets(top: 0, left: inset, bottom: 0, right: 0)
        self.textColor = .grayZero
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
//        return UIEdgeInsetsInsetRect(bounds, UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 0))
        return bounds.inset(by: self.insets)
//        let container = CGRect(x: 0, y: 0, width: 306, height: 28)
//        self.textColor = .grayZero
        //let margin = UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 0)
//        return container.inset(by: self.insets)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
//        let container = CGRect(x: 0, y: 0, width: 306, height: 28)
//        self.textColor = .grayZero
//        return container.inset(by: self.insets)
        return bounds.inset(by: self.insets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
//        let container = CGRect(x: 0, y: 0, width: 306, height: 28)
//        self.textColor = .grayZero
//        return container.inset(by: self.insets)
        return bounds.inset(by: self.insets)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
