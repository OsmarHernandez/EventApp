//
//  EventHeaderView.swift
//  EventManager
//
//  Created by osmar.alan.hernandez on 25/04/21.
//

import UIKit

public final class EventHeaderView: UITableViewHeaderFooterView {
    
    let dayLabel: UILabel = {
        let label = UILabel()
        label.text = "M"
        label.textAlignment = .center
        label.font = UIFont(name: "Poppins-Bold", size: 20)
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "22"
        label.textAlignment = .center
        label.font = UIFont(name: "SquadaOne-Regular", size: 80)
        return label
    }()
    
    class var reuseIdentifier: String {
      return String(describing: self)
    }
    
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureContents() {
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(dayLabel)
        contentView.addSubview(dateLabel)
        
        NSLayoutConstraint.activate([
            dayLabel.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            dayLabel.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            dayLabel.widthAnchor.constraint(equalToConstant: 28),
            dayLabel.heightAnchor.constraint(equalToConstant: 28),
            
            dateLabel.widthAnchor.constraint(equalToConstant: 80),
            dateLabel.heightAnchor.constraint(equalToConstant: 80),
            dateLabel.topAnchor.constraint(equalTo: dayLabel.topAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: dayLabel.trailingAnchor)
        ])
        
        contentView.backgroundColor = .systemBackground
    }
    
    public func changeTintColor(_ color: UIColor) {
        dayLabel.textColor = color
        dateLabel.textColor = color
    }
}
