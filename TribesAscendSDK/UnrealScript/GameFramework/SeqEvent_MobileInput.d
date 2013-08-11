module UnrealScript.GameFramework.SeqEvent_MobileInput;

import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileInput : SeqEvent_MobileZoneBase
{
	public @property final auto ref float CurrentY() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float CurrentX() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float CenterY() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float CenterX() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float YAxisValue() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float XAxisValue() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
}
