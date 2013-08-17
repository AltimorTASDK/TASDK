module UnrealScript.GameFramework.SeqEvent_MobileLook;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileLook : SeqEvent_MobileZoneBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.SeqEvent_MobileLook")); }
	private static __gshared SeqEvent_MobileLook mDefaultProperties;
	@property final static SeqEvent_MobileLook DefaultProperties() { mixin(MGDPC("SeqEvent_MobileLook", "SeqEvent_MobileLook GameFramework.Default__SeqEvent_MobileLook")); }
	@property final auto ref
	{
		Vector RotationVector() { mixin(MGPC("Vector", 276)); }
		float StickStrength() { mixin(MGPC("float", 272)); }
		float Yaw() { mixin(MGPC("float", 268)); }
	}
}
