//
//  SecondaryView.swift
//  DelegateAndNavigation
//
//  Created by Leonardo Almeida on 23/06/22.
//

import UIKit

class SecondaryView: UIView {
    var stackView: UIStackView = {
        var stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .equalSpacing
        return stack
    }()
    
    var circleBrow: CircleView = {
        var circle = CircleView()
        circle.backgroundColor = .brown
        
        return circle
    }()
    
    var circleRed: CircleView = {
        var circle = CircleView()
        circle.backgroundColor = .red
        return circle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configLayout() {
        stackView.addSubview(circleBrow)
        stackView.addSubview(circleRed)
        
        
        let gestureRed:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.toPaintRed))
        gestureRed.numberOfTapsRequired = 1
        circleRed.addGestureRecognizer(gestureRed)
        
        let gestureBrow:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.toPaintBrow))
        gestureBrow.numberOfTapsRequired = 1
        circleBrow.addGestureRecognizer(gestureBrow)
        
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            
            circleRed.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            circleRed.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100),
            
            circleBrow.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            circleBrow.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -100),
        ])
    }
  
    @objc
    private func toPaintBrow() {
        backgroundColor = .brown
    }
    
    @objc
    private func toPaintRed() {
        backgroundColor = .red
    }
}
