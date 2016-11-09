import UIKit
import AVFoundation

class SoundEffect: NSObject {
    
    //MARK: Properties
    var soundID: SystemSoundID = 0
    
    //MARK: Initialization
    init(soundURL: NSURL) {
        super.init()
        var theSoundID: SystemSoundID = 0
        let error = AudioServicesCreateSystemSoundID(soundURL, &theSoundID);
        if error == kAudioServicesNoError {
            soundID = theSoundID
        }
    }
    
    deinit {
        AudioServicesDisposeSystemSoundID(soundID)
    }
    
    //MARK: Actions
    func playSound() {
        AudioServicesPlaySystemSound(soundID)
    }
    
}
