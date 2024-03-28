//
//  AudioUnitViewModel.swift
//  TestAUMac
//
//  Created by Kira Ryouta on 2024/03/27.
//

import SwiftUI
import AudioToolbox
import CoreAudioKit

struct AudioUnitViewModel {
    var showAudioControls: Bool = false
    var showMIDIContols: Bool = false
    var title: String = "-"
    var message: String = "No Audio Unit loaded.."
    var viewController: ViewController?
}
