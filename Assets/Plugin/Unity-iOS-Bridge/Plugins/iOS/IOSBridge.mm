#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

extern "C"
{
    
    bool IOSPermissionCameraOK() {
        
        NSString *mediaType = AVMediaTypeVideo;
        AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
        
        return authStatus == AVAuthorizationStatusAuthorized;
        
    }
    
    bool IOSIsLowPowerModeEnabled() {
        return [[NSProcessInfo processInfo] isLowPowerModeEnabled];
    }
    
    bool IOSUIAccessibilityIsAssistiveTouchRunning() {
        return UIAccessibilityIsAssistiveTouchRunning();
    }
    
    bool IOSUIAccessibilityIsVoiceOverRunning() {
        return UIAccessibilityIsVoiceOverRunning();
    }
    
    bool IOSUIAccessibilityIsSwitchControlRunning() {
        return UIAccessibilityIsSwitchControlRunning();
    }
    
    bool IOSUIAccessibilityIsShakeToUndoEnabled() {
        return UIAccessibilityIsShakeToUndoEnabled();
    }
    
    bool IOSUIAccessibilityIsClosedCaptioningEnabled() {
        return UIAccessibilityIsClosedCaptioningEnabled();
    }
    
    bool IOSUIAccessibilityIsBoldTextEnabled() {
        return UIAccessibilityIsBoldTextEnabled();
    }
    
    bool IOSUIAccessibilityDarkerSystemColorsEnabled() {
        return UIAccessibilityDarkerSystemColorsEnabled();
    }
    
    bool IOSUIAccessibilityIsGrayscaleEnabled() {
        return UIAccessibilityIsGrayscaleEnabled();
    }
    
    bool IOSUIAccessibilityIsGuidedAccessEnabled() {
        return UIAccessibilityIsGuidedAccessEnabled();
    }
    
    bool IOSUIAccessibilityIsInvertColorsEnabled() {
        return UIAccessibilityIsInvertColorsEnabled();
    }
    
    bool IOSUIAccessibilityIsMonoAudioEnabled() {
        return UIAccessibilityIsMonoAudioEnabled();
    }
    
    bool IOSUIAccessibilityIsReduceMotionEnabled() {
        return UIAccessibilityIsReduceMotionEnabled();
    }
    
    bool IOSUIAccessibilityIsReduceTransparencyEnabled() {
        return UIAccessibilityIsReduceTransparencyEnabled();
    }
    
    bool IOSUIAccessibilityIsSpeakScreenEnabled() {
        return UIAccessibilityIsSpeakScreenEnabled();
    }
    
    bool IOSUIAccessibilityIsSpeakSelectionEnabled() {
        return UIAccessibilityIsSpeakSelectionEnabled();
    }
    
    void IOSUIImpactFeedbackGenerator(const char* style) {
        
        UIImpactFeedbackStyle feedbackStyle;
        
        const NSString* styleString = [NSString stringWithUTF8String: style];
        
        if ([styleString isEqualToString:@"light"]) {
            
            feedbackStyle = UIImpactFeedbackStyleLight;
            
        } else if ([styleString isEqualToString:@"medium"]) {
            
            feedbackStyle = UIImpactFeedbackStyleMedium;
            
        } else if ([styleString isEqualToString:@"heavy"]) {
            
            feedbackStyle = UIImpactFeedbackStyleHeavy;
            
        } else {
            
            NSException* exception = [NSException
                                      exceptionWithName:NSInvalidArgumentException
                                      reason:@"Invalid inpact feedback style."
                                      userInfo:nil];
            
            [exception raise];
            
        }
        
        UIImpactFeedbackGenerator *feedbackGenerator = [[UIImpactFeedbackGenerator alloc] initWithStyle:feedbackStyle];
        
        [feedbackGenerator impactOccurred];
        
    }
    
}
