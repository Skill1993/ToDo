//
//  NewItemPopUp.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 02/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class NewItemPopUp: GDGradient {
    override init(frame: CGRect = .zero){
        super.init(frame: frame)
        
        self.layer.cornerRadius = 14
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
