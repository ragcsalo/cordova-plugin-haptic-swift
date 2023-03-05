import Foundation

@objc(Echo)
public class Echo : CDVPlugin {
  @objc
  func echo(_ command: CDVInvokedUrlCommand) {
    let echo = command.argument(at: 0) as! String?
    let pluginResult:CDVPluginResult

    if echo != nil && echo!.count > 0 {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: echo!)
    } else {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
    }

    self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
  }
  
  @objc
  func shortvibra(_ command: CDVInvokedUrlCommand) {
    let pluginResult:CDVPluginResult
    
    let siker = false

    let parameters = [
      CHHapticEventParameter(
        parameterID: .hapticIntensity,
        value: 1.00),
      CHHapticEventParameter(
        parameterID: .hapticSharpness,
        value: 1.00),
      CHHapticEventParameter(
        parameterID: .attackTime,
        value: -1.00),
      CHHapticEventParameter(
        parameterID: .decayTime,
        value: 1.00),
      CHHapticEventParameter(
        parameterID: .releaseTime,
        value: 0.00),
      CHHapticEventParameter(
        parameterID: .sustained,
        value: 1)
    ]

    let event = CHHapticEvent(
      eventType: .hapticContinuous,
      parameters: parameters,
      relativeTime: 0,
      duration: 0.17)

    let engine = try CHHapticEngine()
    try engine.start()

    let pattern = try CHHapticPattern(
      events: [event],
      parameters: [])
    let player = try engine
      .makePlayer(with: pattern)
    try {
      player.start(atTime: 0)
      siker = true
    }
    
    if (siker==true) {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK)
    } else {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
    }

    self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
  }
  
   @objc
  func longvibra(_ command: CDVInvokedUrlCommand) {
    let pluginResult:CDVPluginResult
    
    let siker = false

    let parameters = [
      CHHapticEventParameter(
        parameterID: .hapticIntensity,
        value: 1.00),
      CHHapticEventParameter(
        parameterID: .hapticSharpness,
        value: 1.00),
      CHHapticEventParameter(
        parameterID: .attackTime,
        value: -1.00),
      CHHapticEventParameter(
        parameterID: .decayTime,
        value: 1.00),
      CHHapticEventParameter(
        parameterID: .releaseTime,
        value: 0.00),
      CHHapticEventParameter(
        parameterID: .sustained,
        value: 1)
    ]

    let event = CHHapticEvent(
      eventType: .hapticContinuous,
      parameters: parameters,
      relativeTime: 0,
      duration: 0.57)

    let engine = try CHHapticEngine()
    try engine.start()

    let pattern = try CHHapticPattern(
      events: [event],
      parameters: [])
    let player = try engine
      .makePlayer(with: pattern)
    try {
      player.start(atTime: 0)
      siker = true
    }
    
    if (siker==true) {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK)
    } else {
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
    }

    self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
  }
  

  
}
