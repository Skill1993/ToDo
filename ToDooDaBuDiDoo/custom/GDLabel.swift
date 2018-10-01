//
//  GDLabel.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 01/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class GDLabel: UILabel {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String = "Default text", color: UIColor = .white, size: CGFloat = 16, frame: CGRect = .zero, textAlign: NSTextAlignment = .left) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.font = UIFont.systemFont(ofSize: size)
        self.textAlignment = textAlign
    }
    
}
