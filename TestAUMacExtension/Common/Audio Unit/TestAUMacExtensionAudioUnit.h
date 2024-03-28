//
//  TestAUMacExtensionAudioUnit.h
//  TestAUMacExtension
//
//  Created by Kira Ryouta on 2024/03/27.
//

#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface TestAUMacExtensionAudioUnit : AUAudioUnit
- (void)setupParameterTree:(AUParameterTree *)parameterTree;
@end
