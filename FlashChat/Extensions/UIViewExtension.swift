//
//  UIViewExtension.swift
//  FlashChat
//
//  Created by Nickolay Vasilchenko on 13.09.2023.
//

import Foundation
import UIKit

extension UIView {
//  MARK: - Shadows
    func drawShadow() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.5
    }
//  MARK: - AutoLayout
    func fillSuperView() {
        setAnchors(top: superview?.topAnchor,
                   botton: superview?.bottomAnchor,
                   left: superview?.leadingAnchor,
                   right: superview?.trailingAnchor)
    }
    
    func anchorSize(to view: UIView) {
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    func setAnchors(top: NSLayoutYAxisAnchor? = nil, botton: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, centerX: Bool = false, centerY: Bool = false,
                    padding: UIEdgeInsets = .zero,
                    size: CGSize = .zero) {
    
        guard let superview = superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let botton = botton {
            bottomAnchor.constraint(equalTo: botton, constant: -padding.bottom).isActive = true
        }
        if let left = left {
            leadingAnchor.constraint(equalTo: left, constant: padding.left).isActive = true
        }
        if let right = right {
            trailingAnchor.constraint(equalTo: right, constant: -padding.right).isActive = true
        }
        if centerX {
            centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        }
        if centerY {
            centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        }
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}
