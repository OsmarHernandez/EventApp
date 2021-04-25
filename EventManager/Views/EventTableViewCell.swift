//
//  EventTableViewCell.swift
//  EventManager
//
//  Created by osmar.alan.hernandez on 24/04/21.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    class var reuseIdentifier: String {
      return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupConstraint(for: topLabel, constant: 32)
        setupConstraint(for: timeLabel, constant: 80)
    }
    
    private func setupConstraint(for view: UIView, constant: CGFloat) {
        view.widthAnchor.constraint(equalToConstant: constant).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
