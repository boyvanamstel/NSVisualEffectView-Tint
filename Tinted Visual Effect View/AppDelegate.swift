//
//  AppDelegate.swift
//  Tinted Visual Effect View
//
//  Created by Boy van Amstel on 28/10/15.
//  Copyright © 2015 The Sync Factory. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!
  @IBOutlet weak var vibrancyView: NSVisualEffectView!
  
  var tintColor: NSColor?
  
  func applicationDidFinishLaunching(aNotification: NSNotification) {
    // Insert code here to initialize your application

    self.vibrancyView.material = .Dark
  }

  func applicationWillTerminate(aNotification: NSNotification) {
    // Insert code here to tear down your application
  }
  
  func applyTint() {
   
    if let color = self.tintColor {
      print("Applying tint: \(self.tintColor)")
      // Tint the visual effect view
      for sublayer: CALayer in self.vibrancyView.layer!.sublayers! {
        if sublayer.name == "ClearCopyLayer" {
          sublayer.backgroundColor = color.CGColor
          break
        }
      }
    }
  }
 
  @IBAction func tintDark(sender: NSButton) {
    self.vibrancyView.material = .Dark
    applyTint()
  }
  @IBAction func tintLight(sender: NSButton) {
    self.vibrancyView.material = .Light
    applyTint()
  }
  
  @IBAction func tintRed(sender: NSButton) {
    self.tintColor = NSColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.1)
    applyTint()
  }
  @IBAction func tintBlue(sender: NSButton) {
    self.tintColor = NSColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.1)
    applyTint()
  }

}

