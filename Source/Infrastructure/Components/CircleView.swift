//
//  CircleView.swift
//  DelegateAndNavigation
//
//  Created by Leonardo Almeida on 23/06/22.
//

import UIKit

class CircleView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initDefault()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault() {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 60).isActive = true
        widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        layer.cornerRadius = 30
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        clipsToBounds = true
        
        isUserInteractionEnabled = true
    }
}
