//
//  TableViewCell.swift
//  AutoLayout
//
//  Created by Zafar on 06/10/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var title: String = "" {
        didSet {
            self.titleLabel.text = title
        }
    }
    var subtitle: String = "" {
        didSet {
            self.subtitleLabel.text = subtitle
        }
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
        label.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 751), for: .horizontal)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupUI() {
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(subtitleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor
                .constraint(equalTo: self.contentView.centerYAnchor),
            titleLabel.leftAnchor
                .constraint(equalTo: self.contentView.leftAnchor, constant: 20),
        ])
        
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor
                .constraint(equalTo: self.contentView.topAnchor,
                            constant: 10),
            subtitleLabel.rightAnchor
                .constraint(equalTo: self.contentView.rightAnchor,
                            constant: -20),
            subtitleLabel.leftAnchor
                .constraint(equalTo: titleLabel.rightAnchor,
                            constant: 10),
            subtitleLabel.bottomAnchor
                .constraint(equalTo: self.contentView.bottomAnchor,
                            constant: -10)
        ])
        
    }
}
