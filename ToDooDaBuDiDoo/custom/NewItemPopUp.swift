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
    
    override init(frame: CGRect = .zero){
        super.init(frame: frame)
        
        let inset:CGFloat = 16
        
        self.layer.cornerRadius = 14
        
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
