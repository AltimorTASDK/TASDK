module UnrealScript.GameFramework.SeqEvent_MobileSwipe;

import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_MobileRawInput;

extern(C++) interface SeqEvent_MobileSwipe : SeqEvent_MobileRawInput
{
	public @property final auto ref UObject.Vector2D InitialTouch() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float MinDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float Tolerance() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
}
