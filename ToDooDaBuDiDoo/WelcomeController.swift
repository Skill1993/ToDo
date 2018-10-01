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
//    let infoLabel = GDLabel(title: "WELCOME. TO DO DAT IS A TO DO LIST.\nA REALLY DOPE TO DO LIST", size: 14, textAlign: .center)
    let infoLabel: UILabel = {
        let label = GDLabel(title: "WELCOME. TO DO DAT IS A TO DO LIST.\nA REALLY DOPE TO DO LIST", size: 14, textAlign: .center)
        label.numberOfLines = 2
        return label
    }()
    
    let nextButton = UIButton()
    
    let copyrightLabel = GDLabel(title: "© 2018 | NAZ Apps", color: .grayZero, size: 14, textAlign: .center)
    
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
        
        bg.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
        
        bg.addSubview(infoLabel)
//        infoLabel.numberOfLines = 2
        infoLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        infoLabel.centerYAnchor.constraint(equalTo: bg.centerYAnchor).isActive = true
        infoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        bg.addSubview(nextButton)
        
        view.addSubview(copyrightLabel)
        copyrightLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        copyrightLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        copyrightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        copyrightLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
    }


}

