//
//  EventFooterView.swift
//  EventManager
//
//  Created by osmar.alan.hernandez on 25/04/21.
//

import UIKit

public final class EventFooterView: UITableViewHeaderFooterView {
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        return view
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
        lineView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(lineView)
        
        NSLayoutConstraint.activate([
            lineView.heightAnchor.constraint(equalToConstant: 1),
            lineView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            lineView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            lineView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
        contentView.backgroundColor = .systemBackground
    }
}
