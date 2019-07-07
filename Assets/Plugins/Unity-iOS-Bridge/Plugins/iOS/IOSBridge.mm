#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

extern "C"
{

    bool IOSIsLowPowerModeEnabled() {
        return [[NSProcessInfo processInfo] isLowPowerModeEnabled];
    }

    bool IOSPermissionCameraOK() {

        NSString *mediaType = AVMediaTypeVideo;
        AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];

        return authStatus == AVAuthorizationStatusAuthorized;

    }

    float IOSSafeAreaInsets(const char* side) {

        if (@available(iOS 11.0, *)) {

            const NSString* sideString = [NSString stringWithUTF8String: side];

            UIWindow *window = UIApplication.sharedApplication.keyWindow;

            if ([sideString isEqualToString:@"top"]) {

                return window.safeAreaInsets.top;

            } else if ([sideString isEqualToString:@"left"]) {

                return window.safeAreaInsets.left;

            } else if ([sideString isEqualToString:@"right"]) {

                return window.safeAreaInsets.right;

            } else if ([sideString isEqualToString:@"bottom"]) {

                return window.safeAreaInsets.bottom;

            } else {

                NSException* exception = [NSException
                                          exceptionWithName:NSInvalidArgumentException
                                          reason:@"Invalid side value."
                                          userInfo:nil];

                [exception raise];

            }
        }

        NSException* exception = [NSException
                                  exceptionWithName:NSInvalidArgumentException
                                  reason:@"SafeArea only avalible on iOS 11+"
                                  userInfo:nil];

        [exception raise];

        return false;

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

    void IOSUIAlertController() {

        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert"
                                    message:@"This is an alert."
                                    preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                        handler:nil];
        [alert addAction:defaultAction];
        [alert setPreferredAction:defaultAction];

        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
                                        handler:nil];
        [alert addAction:cancelAction];

        [self presentViewController:alert animated:YES completion:nil];

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
