//
//  MenuController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit
import SnapKit
import FloatingPanel

class MenuController: UIViewController {
    // MARK: - Properties
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: reuseIdentifer)
        tableView.backgroundColor = .black
        tableView.separatorColor = .darkGray
        tableView.rowHeight = 55
        tableView.tableFooterView = UIView()
        return tableView
    }()
    
    weak var delegete: HomeViewControllerDelegete?
    private let reuseIdentifer = "MenuOptionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        setupTableHeaderView()
        
    }
    
    private func setupTableHeaderView() {
        
        // Setup table header view.
        let width: CGFloat = UIScreen.main.bounds.width
        let height: CGFloat = 88
        let frame = CGRect(x: 0, y: 0, width: width, height: height)
        let userView = UserView(frame: frame)
        tableView.tableHeaderView = userView
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 80)
    }

    // MARK: - Handlers
    func configureTableView(){
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}

extension MenuController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath) as! MenuOptionCell
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegete?.handleMenuToggle(forMenuOption: menuOption)
    }
}

