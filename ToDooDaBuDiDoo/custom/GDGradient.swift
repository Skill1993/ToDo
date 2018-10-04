//
//  GDGradient.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 01/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class GDGradient: UIView {
    
    var hexColors: [CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
    ]
    
    override init (frame: CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero{
            translatesAutoresizingMaskIntoConstraints = false
        }
        if let layer = self.layer as? CAGradientLayer {
            //layer.colors = self.colors
            layer.colors = self.hexColors
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
