//
//  TypeAliases.swift
//  TestAUMac
//
//  Created by Kira Ryouta on 2024/03/27.
//

import CoreMIDI
import AudioToolbox

#if os(iOS)
import UIKit
public typealias KitColor = UIColor

public typealias KitView = UIView
public typealias ViewController = UIViewController
#elseif os(macOS)
import AppKit
public typealias KitColor = NSColor

public typealias KitView = NSView
public typealias ViewController = NSViewController
#endif
