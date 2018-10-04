//
//  GDCheckBox.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 04/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class GDCheckBox: UIButton {
    
    var toggled:Bool?{
        didSet {
            if let toggled = toggled {
                UIView.animate(withDuration: 0.35){
                    if toggled{
                        self.backgroundColor = .green
                        self.setImage(UIImage(named:"done-icon"), for: .normal)
                    } else {
                        self.backgroundColor = .clear
                        self.setImage(UIImage(), for: .normal)
                    }
                }
            }
        }
    }
    
    @objc func toggleStatus() {
        if let status = toggled {
            toggled = !status
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.grayZero.cgColor
        
        addTarget(self, action: #selector(self.toggleStatus), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
