//
//  GDCheckBox.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 04/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class GDCheckBox: UIButton {
    
    var delegate: GDListCellDelegate?
    var id: Int?
    
    var toggled:Bool?{
        didSet {
            if let toggled = toggled {
                UIView.animate(withDuration: 0.2){
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
        if let status = toggled, let delegate = self.delegate, let id = self.id {
            toggled = !status
            delegate.toggleToDo(id: id, status: !status)
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
