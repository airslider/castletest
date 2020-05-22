//
//  RootViewControllerViewModel.swift
//  castletest
//
//  Created by Dmitriy Nikolin on 23/05/2020.
//  Copyright © 2020 dnikolin. All rights reserved.
//

import Foundation

class RootViewControllerViewModel {
    
    // MARK: - Properties
    var comments : [Comment] = []
    
    // MARK: - Injections
    var updateView: (()->())?
    
    // MARK: - Setup
    func start() {
        
        if let url = URL(string: Config.apiAddress) {
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                comments = try decoder.decode([Comment].self, from: data)
                
                updateView?()
                
            }
            catch let error as NSError
            {
                print(error.localizedDescription)
            }
            
        }
        
    }
    
    
    // MARK: - View Helpers
    
    var numberOfRows: Int {
        return comments.count
    }
    
    func commentFor(indexPath: IndexPath) -> Comment {
      
        return comments[indexPath.row]
    }
}
