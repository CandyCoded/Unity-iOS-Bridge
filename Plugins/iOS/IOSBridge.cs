using System.Runtime.InteropServices;

namespace CandyCoded.UnityIOSBridge
{

    public static class Accessibility
    {

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsAssistiveTouchRunning();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsVoiceOverRunning();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsSwitchControlRunning();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsShakeToUndoEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsClosedCaptioningEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsBoldTextEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityDarkerSystemColorsEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsGrayscaleEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsGuidedAccessEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsInvertColorsEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsMonoAudioEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsReduceMotionEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsReduceTransparencyEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsSpeakScreenEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIAccessibilityIsSpeakSelectionEnabled();

    }

    public static class Permission
    {

        [DllImport("__Internal")]
        public static extern bool IOSPermissionCameraOK();

    }

    public static class Settings
    {

        [DllImport("__Internal")]
        public static extern bool IOSIsLowPowerModeEnabled();

        [DllImport("__Internal")]
        public static extern bool IOSUIImpactFeedbackGenerator(string style = "medium");

    }

}
