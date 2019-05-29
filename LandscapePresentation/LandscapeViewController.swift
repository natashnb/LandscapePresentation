//
//  LandscapeViewController.swift
//  LandscapePresentation
//
//  Created by Natash Bangera on 29/05/19.
//  Copyright © 2019 Natash Bangera. All rights reserved.
//

import UIKit

class LandscapeViewController: UIViewController {
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .blue
        
        let button = UIButton()
        
        button.setTitle("Dismiss screen",
                        for: .normal)
        button.setTitleColor(.white,
                             for: .normal)
        button.addTarget(self,
                         action: #selector(dismissViewController),
                         for: .touchUpInside)
        
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        
        self.view = view
    }
    
    @objc private func dismissViewController() {
        dismiss(animated: false)
    }
    
}
