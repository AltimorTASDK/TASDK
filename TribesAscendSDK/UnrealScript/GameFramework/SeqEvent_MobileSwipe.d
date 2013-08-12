module UnrealScript.GameFramework.SeqEvent_MobileSwipe;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_MobileRawInput;

extern(C++) interface SeqEvent_MobileSwipe : SeqEvent_MobileRawInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_MobileSwipe")); }
	@property final auto ref
	{
		UObject.Vector2D InitialTouch() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 280); }
		float MinDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
		float Tolerance() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	}
}
