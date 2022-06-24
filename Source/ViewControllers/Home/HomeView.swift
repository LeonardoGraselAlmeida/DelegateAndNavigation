//
//  HomeView.swift
//  DelegateAndNavigation
//
//  Created by Leonardo Almeida on 23/06/22.
//

import UIKit

class HomeView: UIView {
    var onPush: (() -> Void)?
    
    var buttonLink: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Navegar", for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .normal)

        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configLayout() {
        addSubview(buttonLink)
        
        buttonLink.addTarget(self, action: #selector(self.buttonOnPush), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonLink.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            buttonLink.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
        ])
    }
    
    @objc
    func buttonOnPush() {
        self.onPush?()
    }
}
