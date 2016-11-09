import UIKit
import SVProgressHUD

class HUDHelper: NSObject {
    
    class func showHUDWithMessage(message: String) {
        dispatch_async(dispatch_get_main_queue()) {
            SVProgressHUD.setDefaultMaskType(.Clear)
            SVProgressHUD.setBackgroundColor(ThemeColor.Red)
            SVProgressHUD.setForegroundColor(UIColor.whiteColor())
            SVProgressHUD.showWithStatus(message)
        }
    }
    
    class func dismissHUD() {
        dispatch_async(dispatch_get_main_queue()) {
            SVProgressHUD.dismiss()
        }
    }
    
    class func dismissHUDWithError(error: NSError) {
        dispatch_async(dispatch_get_main_queue()) {
            SVProgressHUD.showErrorWithStatus(error.localizedDescription)
        }
    }
    
    class func dismissHUDWithSuccessMessage(message: String) {
        dispatch_async(dispatch_get_main_queue()) {
            SVProgressHUD.showSuccessWithStatus(message)
        }
    }
    
    class func dismissHUDWithMessage(message: String) {
        dispatch_async(dispatch_get_main_queue()) {
            SVProgressHUD.showInfoWithStatus(message)
        }
    }
}
