//
//  ListController.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 01/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class ListController: UIViewController, GDHeaderDelegate, GDNewItemDelegate {
    
    func addItemToList(text: String) {
        print("text in the textfield is: \(text)")
    }
    
    func openAddItemPopup() {
        print("trying to open item popup view")
    }
    
    let header = GDHeaderView(title: "Stuff to get done", subtitle: "4 left")
    let popup = GDNewItemPopUp()
    
    let bg: UIView = {
        let view = GDGradient()
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 24
        return view
    }()
    
    var keyboardHeight: CGFloat = 260
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardDidShowNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: Notification){
        let keyboardSize = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size
        self.keyboardHeight = keyboardSize.height
//        print(self.keyboardHeight)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        view.addSubview(popup)
        popup.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        popup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        popup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        popup.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        popup.textField.delegate = self
        popup.delegate = self
        
        header.delegate = self
    }
}

extension ListController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        popup.animateView(transform: CGAffineTransform(translationX: 0, y: -self.keyboardHeight), duration: 0.60)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        popup.animateView(transform: CGAffineTransform(translationX: 0, y: 0), duration: 0.60)
    }
}
