//
//  GDGradient.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 01/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class GDGradient: UIView {
    
    var colors:[CGColor] = [
        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
        UIColor.init(red: 58, green: 123, blue: 213).cgColor
    ]
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.colors
            layer.locations = [0.0, 1.2]
        }
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
