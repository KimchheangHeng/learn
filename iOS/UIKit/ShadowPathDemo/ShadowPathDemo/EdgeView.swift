//
//  ShadowEdgeView.swift
//  Alamofire
//
//

import Foundation
import UIKit
import SnapKit

class ShadowEdgeView: UIView {
    enum Position: Int {
        case top
        case left
        case bottom
        case right
    }
    let position: Position
    init(frame: CGRect, color: UIColor = .yellow, position: ShadowEdgeView.Position = .top) {
        self.position = position
        super.init(frame: frame)
        self.backgroundColor = color
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        configShadow()
    }

    fileprivate func configShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        let path = UIBezierPath()
        switch position {
        case .top:
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: -34))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: -34))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: 0))
        case .left:
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: self.frame.size.height))
            path.addLine(to: CGPoint(x: 1, y: self.frame.size.height))
            path.addLine(to: CGPoint(x: 1, y: 0))
        default:
            assertionFailure("Unsupported")
        }
        self.layer.shadowPath = path.cgPath
    }
}
