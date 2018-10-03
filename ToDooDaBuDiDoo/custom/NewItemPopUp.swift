//
//  NewItemPopUp.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 02/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class NewItemPopUp: GDGradient {
    
    let cancel = GDButton(title: " cancel ", type: .roundedText, radius: 4)
    let add = GDButton(title: "  add  ", type: .roundedText, radius: 4)
    let textField = GDTextField(placeholder: " go buy IKEA frames", inset: 4)
    
    @objc func handleCancel(){
        print("trying to handle cancel")
    }
    
    @objc func handleAdd(){
        print("trying to handle add")
    }
    
    override init(frame: CGRect = .zero){
        super.init(frame: frame)
        
        let inset:CGFloat = 12
        
        self.layer.cornerRadius = 14
        
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(add)
        add.rightAnchor.constraint(equalTo: rightAnchor, constant: -inset).isActive = true
        add.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        add.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(textField)
        textField.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        textField.rightAnchor.constraint(equalTo: rightAnchor, constant: -inset).isActive = true
        textField.topAnchor.constraint(equalTo: add.bottomAnchor, constant: 8).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        cancel.addTarget(self, action: #selector(self.handleCancel), for: .touchUpInside)
        add.addTarget(self, action: #selector(self.handleAdd), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
