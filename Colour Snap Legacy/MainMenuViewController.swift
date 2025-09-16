//
//  ViewController.swift
//  Colour Snap Legacy
//
//  Created by JWI on 16/9/25.
//  Copyright © 2025 JWI. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
    let gameTitle = UILabel()
    let playButton = UIButton(type: .Custom)
    let viewStack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        gameTitle.text = "Colour Snap!"
        gameTitle.font = UIFont.systemFont(ofSize: 30)
        gameTitle.translatesAutoresizingMaskIntoConstraints = false
        
        playButton.setTitle("Play", for: .Normal)
        playButton.translatesAutoresizingMaskIntoConstraints = false
        playButton.adjustsImageWhenHighlighted = false
        playButton.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        playButton.layer.shadowColor = UIColor.black.CGColor
        playButton.layer.shadowRadius = 12
        playButton.layer.shadowOpacity = 0.4
        
        
        viewStack.addArrangedSubview(gameTitle)
        viewStack.addArrangedSubview(playButton)
        viewStack.axis = .Vertical
        viewStack.alignment = .Center
        viewStack.distribution = .FillEqually
        
        
        view.addSubview(viewStack)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            viewStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            viewStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            viewStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            viewStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            viewStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
            ])
        
        NSLayoutConstraint.activate([
            playButton.widthAnchor.constraint(equalTo: viewStack.widthAnchor, multiplier: 0.25),
            playButton.heightAnchor.constraint(equalTo: playButton.widthAnchor)
            ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playButton.layer.cornerRadius = playButton.frame.width*0.5
    }

}

class UIColourChanger {
    
}
