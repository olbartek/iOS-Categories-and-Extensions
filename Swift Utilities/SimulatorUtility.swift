//
//  SimulatorUtility.swift
//  ShoppingApp
//
//  Created by Bartosz Olszanowski on 06.10.2015.
//  Copyright © 2015 Vormlab. All rights reserved.
//

import UIKit

class SimulatorUtility: NSObject {
    
    class var isRunningSimulator: Bool {
        get {
            return TARGET_OS_SIMULATOR != 0
        }
    }

}
