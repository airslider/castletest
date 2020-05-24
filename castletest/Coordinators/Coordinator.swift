//
//  Coordinator.swift
//  castletest
//
//  Created by Dmitriy Nikolin on 23/05/2020.
//  Copyright © 2020 dnikolin. All rights reserved.
//

import UIKit

class Coordinator: NSObject, UINavigationControllerDelegate {
    
    // MARK: - Properties
    var didFinish: ((Coordinator) -> Void)?
    
    // MARK: -
    var childCoordinators: [Coordinator] = []

    // MARK: - Methods
    
    func start() { }
}
