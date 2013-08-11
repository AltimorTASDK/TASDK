module UnrealScript.GameFramework.SeqEvent_MobileLook;

import ScriptClasses;
import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileLook : SeqEvent_MobileZoneBase
{
	public @property final auto ref Vector RotationVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float StickStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float Yaw() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
}
