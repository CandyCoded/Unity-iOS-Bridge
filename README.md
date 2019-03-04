# Unity iOS Bridge

## Installation

### Unity Package Manager _(Unity 2018.3)_

<https://docs.unity3d.com/Packages/com.unity.package-manager-ui@2.0/manual/index.html>

```json
{
    "dependencies": {
        "com.candycoded.unity-ios-bridge": "https://github.com/neogeek/Unity-iOS-Bridge.git#v1.0.0"
    }
}
```

## Documentation

### Accessibility

Make your apps accessible to everyone, including people with disabilities.

<https://developer.apple.com/documentation/uikit/accessibility?language=objc>

#### `IOSUIAccessibilityIsAssistiveTouchRunning`

Returns a Boolean value indicating whether the system preference for AssistiveTouch is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsAssistiveTouchRunning()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1648479-uiaccessibilityisassistivetouchr?language=objc>

#### `IOSUIAccessibilityIsVoiceOverRunning`

Returns a Boolean value indicating whether VoiceOver is running.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsVoiceOverRunning()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615187-uiaccessibilityisvoiceoverrunnin?language=objc>

#### `IOSUIAccessibilityIsSwitchControlRunning`

Returns a Boolean value indicating whether Switch Control is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsSwitchControlRunning()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615131-uiaccessibilityisswitchcontrolru?language=objc>

#### `IOSUIAccessibilityIsShakeToUndoEnabled`

Returns a Boolean value indicating whether the system preference for Shake to Undo is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsShakeToUndoEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615103-uiaccessibilityisshaketoundoenab?language=objc>

#### `IOSUIAccessibilityIsClosedCaptioningEnabled`

Returns a Boolean value indicating whether closed captioning is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsClosedCaptioningEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615112-uiaccessibilityisclosedcaptionin?language=objc>

#### `IOSUIAccessibilityIsBoldTextEnabled`

Returns a Boolean value indicating whether bold text is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsBoldTextEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615156-uiaccessibilityisboldtextenabled?language=objc>

#### `IOSUIAccessibilityDarkerSystemColorsEnabled`

Returns a Boolean value indicating whether darken colors is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityDarkerSystemColorsEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615087-uiaccessibilitydarkersystemcolor?language=objc>

#### `IOSUIAccessibilityIsGrayscaleEnabled`

Returns a Boolean value indicating whether grayscale is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsGrayscaleEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615189-uiaccessibilityisgrayscaleenable?language=objc>

#### `IOSUIAccessibilityIsGuidedAccessEnabled`

Returns a Boolean value indicating whether the app is running in Guided Access mode.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsGuidedAccessEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615173-uiaccessibilityisguidedaccessena?language=objc>

#### `IOSUIAccessibilityIsInvertColorsEnabled`

Returns a Boolean value indicating whether inverted colors is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsInvertColorsEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615167-uiaccessibilityisinvertcolorsena?language=objc>

#### `IOSUIAccessibilityIsMonoAudioEnabled`

Returns a Boolean value indicating whether system audio is set to mono.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsMonoAudioEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615123-uiaccessibilityismonoaudioenable?language=objc>

#### `IOSUIAccessibilityIsReduceMotionEnabled`

Returns a Boolean value indicating whether reduce motion is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsReduceMotionEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615133-uiaccessibilityisreducemotionena?language=objc>

#### `IOSUIAccessibilityIsReduceTransparencyEnabled`

Returns a Boolean value indicating whether reduce transparency is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsReduceTransparencyEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615074-uiaccessibilityisreducetranspare?language=objc>

#### `IOSUIAccessibilityIsSpeakScreenEnabled`

Returns a Boolean value indicating whether speaking the screen is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsSpeakScreenEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615109-uiaccessibilityisspeakscreenenab?language=objc>

#### `IOSUIAccessibilityIsSpeakSelectionEnabled`

Returns a Boolean value indicating whether speaking the selection is enabled.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Accessibility.IOSUIAccessibilityIsSpeakSelectionEnabled()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/1615154-uiaccessibilityisspeakselectione?language=objc>

### Permission

#### `IOSPermissionCameraOK`

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Permission.IOSPermissionCameraOK()); // true
#endif
```

Ref: <https://developer.apple.com/documentation/avfoundation/avauthorizationstatus?language=objc>

### Settings

#### `IOSIsLowPowerModeEnabled`

A Boolean indicating whether Low Power Mode is enabled on an iOS device.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.Settings.IOSIsLowPowerModeEnabled()); // false
#endif
```

Ref: <https://developer.apple.com/documentation/foundation/nsprocessinfo/1617047-lowpowermodeenabled?language=objc>

#### `IOSUIImpactFeedbackGenerator`

```csharp
#if UNITY_IOS && !UNITY_EDITOR
CandyCoded.UnityIOSBridge.Settings.IOSUIImpactFeedbackGenerator();
#endif
```

```csharp
#if UNITY_IOS && !UNITY_EDITOR
CandyCoded.UnityIOSBridge.Settings.IOSUIImpactFeedbackGenerator("light");
CandyCoded.UnityIOSBridge.Settings.IOSUIImpactFeedbackGenerator("medium");
CandyCoded.UnityIOSBridge.Settings.IOSUIImpactFeedbackGenerator("heavy");
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/uiimpactfeedbackgenerator?language=objc>

### View

#### `IOSSafeAreaInsets`

The insets that you use to determine the safe area for this view.

```csharp
#if UNITY_IOS && !UNITY_EDITOR
Debug.Log(CandyCoded.UnityIOSBridge.View.IOSSafeAreaInsets()); // {top: 0, left: 0, right: 0, bottom: 0}
#endif
```

Ref: <https://developer.apple.com/documentation/uikit/uiview/2891103-safeareainsets?language=objc>
