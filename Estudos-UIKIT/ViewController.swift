//
//  ViewController.swift
//  Estudos-UIKIT
//
//  Created by Mateus on 04/02/26.
//

import UIKit

class ViewController: UIViewController {

    let myButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Clique aqui", for: .normal)
        button.setTitleColor(Colors.darkGrayBackground, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.backgroundColor = Colors.purpleDark
        button.layer.cornerRadius = Metrics.small
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let myInput: UITextField = {
        let input = UITextField()
        input.attributedPlaceholder = NSAttributedString(
            string: "Digite uma mensagem:",
            attributes: [.foregroundColor: UIColor.white]
        )
        input.layer.borderWidth = 0.8
        input.layer.borderColor = Colors.grayBorder.cgColor
        input.layer.cornerRadius = Metrics.tiny
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: Metrics.tiny, height: 0))
        input.leftView = paddingView
        input.leftViewMode = .always
        
        input.translatesAutoresizingMaskIntoConstraints = false
        return input
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.darkGrayBackground
        
        view.addSubview(myInput)
        view.addSubview(myButton)
        
        NSLayoutConstraint.activate([
            myInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myInput.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            myInput.widthAnchor.constraint(equalToConstant: 300),
            myInput.heightAnchor.constraint(equalToConstant: 44),
            
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.topAnchor.constraint(equalTo: myInput.bottomAnchor, constant: Metrics.huge),
            myButton.widthAnchor.constraint(equalToConstant: 300),
            myButton.heightAnchor.constraint(equalToConstant: Metrics.huge)
        
        ])
    }
}
