//
//  ViewController.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 30/09/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {

    let bg: UIView = {
        let view = GDGradient()
        //view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 6
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true

    }


}

