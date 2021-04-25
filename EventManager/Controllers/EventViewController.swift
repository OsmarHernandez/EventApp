//
//  EventViewController.swift
//  EventManager
//
//  Created by osmar.alan.hernandez on 24/04/21.
//

import UIKit

class EventViewController: UIViewController {

    // fake titles
    private let titles = ["Bruno Mars", "BBF: Barcelona Beach Festival 2020", "Illusionist"]
    private let times = ["11:00 am", "1:00 pm", "3:00 pm"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(EventHeaderView.self, forHeaderFooterViewReuseIdentifier: EventHeaderView.reuseIdentifier)
        tableView.register(EventFooterView.self, forHeaderFooterViewReuseIdentifier: EventFooterView.reuseIdentifier)
    }
    
    // - TODO: Increase size of table view cell dinamically
}

extension EventViewController: UITableViewDelegate {

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 58
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 88
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
}

extension EventViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let eventCell = tableView.dequeueReusableCell(withIdentifier: EventTableViewCell.reuseIdentifier) as! EventTableViewCell
        
        let time = times[indexPath.row]
        let title = titles[indexPath.row]
        eventCell.timeLabel.text = time
        eventCell.titleLabel.text = title
        eventCell.topLabel.alpha = title == "Bruno Mars" ? 1 : 0
        
        return eventCell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: EventHeaderView.reuseIdentifier) as! EventHeaderView
        let color: UIColor = (section % 2 == 0) ? .eOrange : .label
        headerView.changeTintColor(color)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: EventFooterView.reuseIdentifier) as! EventFooterView
        footerView.lineView.alpha = section == 8 ? 0 : 1
        return footerView
    }
}
