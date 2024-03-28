//
//  TestAUMacExtensionParameterAddresses.h
//  TestAUMacExtension
//
//  Created by Kira Ryouta on 2024/03/27.
//

#pragma once

#include <AudioToolbox/AUParameters.h>

#ifdef __cplusplus
namespace TestAUMacExtensionParameterAddress {
#endif

typedef NS_ENUM(AUParameterAddress, TestAUMacExtensionParameterAddress) {
    gain = 0
};

#ifdef __cplusplus
}
#endif
