//
//  TestAUMacApp.swift
//  TestAUMac
//
//  Created by Kira Ryouta on 2024/03/27.
//

import CoreMIDI
import SwiftUI

@main
struct TestAUMacApp: App {
    @ObservedObject private var hostModel = AudioUnitHostModel()

    var body: some Scene {
        WindowGroup {
            ContentView(hostModel: hostModel)
        }
    }
}
