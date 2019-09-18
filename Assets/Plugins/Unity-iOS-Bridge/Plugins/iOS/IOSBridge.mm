#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

extern "C"
{

    void IOSImageAddToGallery(const char* path) {

        NSString* fileString = [NSString stringWithUTF8String: path];

        UIImage *image = [UIImage imageWithContentsOfFile:fileString];
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);

    }

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
                                  reason:@"SafeArea only available on iOS 11+"
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

    void IOSUIAlertController(const char* title, const char* message, const char* okGameObjectName, const char* cancelGameObjectName) {

        NSString* titleString = [NSString stringWithUTF8String: title];
        NSString* messageString = [NSString stringWithUTF8String: message];

        NSString* okGameObjectNameString = [NSString stringWithUTF8String: okGameObjectName];
        NSString* cancelGameObjectNameString = [NSString stringWithUTF8String: cancelGameObjectName];

        UIAlertController* alert = [UIAlertController alertControllerWithTitle:titleString
                                                                       message:messageString
                                                                preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {

                                                                  UnitySendMessage([okGameObjectNameString UTF8String], "CallbackOneShot", "");

                                                              }];
        [alert addAction:defaultAction];

        if ([cancelGameObjectNameString length] > 0) {

            UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
                                                                 handler:^(UIAlertAction * action) {

                                                                     UnitySendMessage([cancelGameObjectNameString UTF8String], "CallbackOneShot", "");

                                                                 }];
            [alert addAction:cancelAction];
            [alert setPreferredAction:defaultAction];

        }

        UIViewController* view = [[[UIApplication sharedApplication] keyWindow] rootViewController];

        [view presentViewController:alert animated:YES completion:nil];

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
                                      reason:@"Invalid impact feedback style."
                                      userInfo:nil];

            [exception raise];

        }

        UIImpactFeedbackGenerator *feedbackGenerator = [[UIImpactFeedbackGenerator alloc] initWithStyle:feedbackStyle];

        [feedbackGenerator impactOccurred];

    }

}
