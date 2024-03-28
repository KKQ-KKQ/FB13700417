//
//  TestAUMacExtensionMainView.swift
//  TestAUMacExtension
//
//  Created by Kira Ryouta on 2024/03/27.
//

import SwiftUI

struct TestAUMacExtensionMainView: View {
    var parameterTree: ObservableAUParameterGroup
    
    var body: some View {
        ParameterSlider(param: parameterTree.global.gain)
    }
}
