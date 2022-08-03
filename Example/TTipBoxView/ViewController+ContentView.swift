//
//  ViewController+ContentView.swift
//  TTipBoxView_Example
//
//  Created by Nguyen, Thinh on 03/08/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import TTipBoxView

extension ViewController {
    final class ContentView: UIView {
        private lazy var stackView = UIStackView(arrangedSubviews: [
            tipBoxView,
            tipBoxView2
        ])
        
        let tipBoxView = TTipBoxView()
        let tipBoxView2 = TTipBoxView()
        
        init() {
            super.init(frame: .zero)
            addSubviews()
            setupSubviews()
            setupLayout()
        }
        
        @available(*, unavailable)
        required init?(coder: NSCoder) { nil }
    }
}

extension ViewController.ContentView {
    private func addSubviews() {
        addSubview(stackView)
    }
    
    private func setupSubviews() {
        backgroundColor = .white
        
        stackView.axis = .vertical
        stackView.spacing = 24
        stackView.isLayoutMarginsRelativeArrangement = true
        
        tipBoxView.tipLabel.text = "Tip: Please remember TTipBoxView when you want to add a tip box view.\n\nYou must be a iOS developer when using this library 😘"
        tipBoxView.image = UIImage(named: "tip")
        
        tipBoxView2.tipLabel.text = "Tip: Don't for get to call pod 'TTipBoxView' if you want to use it.\n\nThank you 😘"
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            stackView.topAnchor.constraint(equalTo: topAnchor)
        ])
    }
}
