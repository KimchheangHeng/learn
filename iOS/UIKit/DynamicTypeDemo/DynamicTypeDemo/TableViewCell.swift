//
//  TableViewCell.swift
//  DynamicTypeDemo
//
//  Created by huahuahu on 2018/7/9.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var titleLabel: UILabel = UILabel.init()
    var secondLabel = UILabel.init()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(secondLabel)
        titleLabel.adjustsFontForContentSizeCategory = true
        secondLabel.adjustsFontForContentSizeCategory = true
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .left
        secondLabel.textAlignment =  .left
        titleLabel.numberOfLines = 0
        secondLabel.numberOfLines = 0
        secondLabel.text = "hello aloha may be very long "
        
        let constraint: [NSLayoutConstraint] = [
        titleLabel.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
        secondLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
        titleLabel.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor),
        secondLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
        
        titleLabel.firstBaselineAnchor.constraintEqualToSystemSpacingBelow(contentView.layoutMarginsGuide.topAnchor, multiplier: 1),
        secondLabel.firstBaselineAnchor.constraintEqualToSystemSpacingBelow(titleLabel.lastBaselineAnchor, multiplier: 1),
        contentView.layoutMarginsGuide.bottomAnchor.constraintEqualToSystemSpacingBelow(secondLabel.lastBaselineAnchor, multiplier: 1)]
        NSLayoutConstraint.activate(constraint)
    }
  
    required init?(coder aDecoder: NSCoder) {
        fatalError("not inplement \(#function)")
    }

    func updateWith(_ info:(String, UIFont.TextStyle)) {
        let (text, style) = info
        titleLabel.text = text
        titleLabel.font = UIFont.preferredFont(forTextStyle: style)
        
        guard let palatino = UIFont(name: "Palatino", size: 18) else {
            fatalError("""
                Failed to load the "Palatino" font.
                Since this font is included with all versions of iOS that support Dynamic Type, verify that the spelling and casing is correct.
                """
            )
        }
        secondLabel.font = UIFontMetrics.init(forTextStyle: style).scaledFont(for: palatino)
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
