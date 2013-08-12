module UnrealScript.GameFramework.SeqEvent_MobileLook;

import ScriptClasses;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileLook : SeqEvent_MobileZoneBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_MobileLook")); }
	@property final auto ref
	{
		Vector RotationVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 276); }
		float StickStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
		float Yaw() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	}
}
