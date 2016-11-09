import UIKit

class SimulatorUtility: NSObject {
    
    class var isRunningSimulator: Bool {
        get {
            return TARGET_OS_SIMULATOR != 0
        }
    }

}
