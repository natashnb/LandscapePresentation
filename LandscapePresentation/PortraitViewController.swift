//
//  PortraitViewController.swift
//  LandscapePresentation
//
//  Created by Natash Bangera on 29/05/19.
//  Copyright © 2019 Natash Bangera. All rights reserved.
//

import UIKit

class PortraitViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let button = UIButton()
        
        button.setTitle("Present screen",
                        for: .normal)
        button.setTitleColor(.black,
                             for: .normal)
        button.addTarget(self,
                         action: #selector(presentLandscapeViewController),
                         for: .touchUpInside)
        
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        
        self.view = view
    }
    
    
    @objc private func presentLandscapeViewController() {
        self.present(LandscapeViewController(), animated: true)
    }
}
