module UnrealScript.GameFramework.SeqEvent_MobileButton;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileButton : SeqEvent_MobileZoneBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.SeqEvent_MobileButton")); }
	private static __gshared SeqEvent_MobileButton mDefaultProperties;
	@property final static SeqEvent_MobileButton DefaultProperties() { mixin(MGDPC("SeqEvent_MobileButton", "SeqEvent_MobileButton GameFramework.Default__SeqEvent_MobileButton")); }
	@property final
	{
		bool bSendPressedOnlyOnTouchUp() { mixin(MGBPC(268, 0x4)); }
		bool bSendPressedOnlyOnTouchUp(bool val) { mixin(MSBPC(268, 0x4)); }
		bool bSendPressedOnlyOnTouchDown() { mixin(MGBPC(268, 0x2)); }
		bool bSendPressedOnlyOnTouchDown(bool val) { mixin(MSBPC(268, 0x2)); }
		bool bWasActiveLastFrame() { mixin(MGBPC(268, 0x1)); }
		bool bWasActiveLastFrame(bool val) { mixin(MSBPC(268, 0x1)); }
	}
}
