//
//  ListViewController.swift
//  Instagram
//
//  Created by Stanislav Starovoytov on 17.09.2020.
//

import UIKit

class ListViewController: UIViewController {

    private let data: [String]
    
    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(UserFolllowTableViewCell.self, forCellReuseIdentifier: UserFolllowTableViewCell.identifier)
        return tableView
    }()
    
    init(data: [String]) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        view.backgroundColor = .systemBackground

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserFolllowTableViewCell.identifier, for: indexPath) as! UserFolllowTableViewCell

        cell.configure(with: "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        //go to profile of selected cell
        let model = data[indexPath.row]
    }
    
}

