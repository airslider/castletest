//
//  ViewController.swift
//  castletest
//
//  Created by Dmitriy Nikolin on 23/05/2020.
//  Copyright © 2020 dnikolin. All rights reserved.
//

import UIKit

final class RootViewController: UIViewController, Storyboardable {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.rowHeight = UITableView.automaticDimension
            tableView.estimatedRowHeight = 50
            let cellNib = UINib(nibName: CommentTableViewCell.nibName, bundle: .main)
            tableView.register(cellNib, forCellReuseIdentifier: CommentTableViewCell.reuseIdentifier)
        }
    }

    // MARK: - Properties
    var viewModel: RootViewControllerViewModel?

    // MARK: - Setup
    func setupView() {
        viewModel?.updateView = {
            self.tableView.reloadData()
        }
    }
}

// MARK: - TableView
extension RootViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CommentTableViewCell.reuseIdentifier, for: indexPath) as? CommentTableViewCell else {
            fatalError("can't be true")
        }
        
        guard let viewModel = viewModel else {
            fatalError("ViewModel is missing")
        }
        cell.config(with: viewModel.commentFor(indexPath: indexPath))
        
        return cell
    }
}
