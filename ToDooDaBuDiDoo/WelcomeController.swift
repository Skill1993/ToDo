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
    
//    let titleLabel = GDLabel()
    let titleLabel = GDLabel(title: "TO DO DAT", size:24, textAlign: .center)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
//        titleLabel.text = "ToDooDaBuDiDoo"
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        view.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true

    }


}

