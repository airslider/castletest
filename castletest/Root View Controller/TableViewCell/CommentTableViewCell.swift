//
//  CommentTableViewCell.swift
//  castletest
//
//  Created by Dmitriy Nikolin on 23/05/2020.
//  Copyright © 2020 dnikolin. All rights reserved.
//

import UIKit

final class CommentTableViewCell: UITableViewCell {
    
    // MARK: - Type Properties
    static let reuseIdentifier = "CommentTableViewCell"
    static let nibName = "CommentTableViewCell"
    
    // MARK: - Outlets
    @IBOutlet private weak var bodyLabel: UILabel!
    @IBOutlet private weak var symbolsCountLabel: UILabel!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var emailLabel: UILabel!
    
    // MARK: - Configure
    
    func config(with comment: Comment) {
        nameLabel.text = "Name: \(comment.name)"
        emailLabel.text = "Email: \(comment.email)"
        
        if comment.body.count > Config.maximumBodyLenght {
            let subBody = comment.body[0...Config.maximumBodyLenght]
            bodyLabel.text = "Comment: \(subBody)..."
            symbolsCountLabel.isHidden = false
            symbolsCountLabel.text = "Total symbols count: \(comment.body.count)"
        }
        else {
            bodyLabel.text = "Comment: \(comment.body)"
            symbolsCountLabel.isHidden = true
            symbolsCountLabel.text = ""
        }
    }
}
