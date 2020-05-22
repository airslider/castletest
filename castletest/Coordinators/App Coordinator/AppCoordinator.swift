//
//  AppCoordinator.swift
//  castletest
//
//  Created by Dmitriy Nikolin on 23/05/2020.
//  Copyright © 2020 dnikolin. All rights reserved.
//

import UIKit

class AppCoordinator : Coordinator{
    
    // MARK: - Properties
    let rootViewController: RootViewController = RootViewController.instantiate()
    
    
    // MARK: - Initialization
    override init() {
        super.init()
              
    }
    
    // MARK: - Methods
    override func start() {
        
        let viewModel = RootViewControllerViewModel()
        
        rootViewController.viewModel = viewModel
        rootViewController.setupView()
        
        viewModel.start()
        
        
    }
    
    
}
