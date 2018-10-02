//
//  GDButton.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 01/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class GDButton: UIButton {
    
    var title: String!
    var type: ButtonOptions!
    
    init(title:String = "button text", frame: CGRect = .zero, type: ButtonOptions = .roundedText) {
        super.init(frame: .zero)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.title = title
        self.type = type
        self.phaseTwo()
        
    }
    
    func phaseTwo() {
        self.setTitle(self.title, for: .normal)
        self.setTitleColor(.grayZero, for: .normal)
        self.backgroundColor = .white
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont(name: "Raleway-v4020-Regular", size: 16)
        }
        switch self.type {
        case .roundedText?:
            self.roundedText()
        case .squareIcon?:
            self.squareIcon()
        default: break
        }
    }
    
    func squareIcon() {
//        self.setTitleColor(.white, for: .normal)
//        this is where we will set the custom icons
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont(name: "Raleway-v4020-Regular", size: 24)
        }
    }
    
    func roundedText() {
//        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 20
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
