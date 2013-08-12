module UnrealScript.UDKBase.UDKSkelControl_HoverboardSuspension;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardSuspension : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_HoverboardSuspension")); }
	@property final auto ref
	{
		float CurrentRot() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
		float MaxRotRate() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float MaxRot() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float RotScale() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		float MinTrans() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float MaxTrans() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float TransOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		float TransScale() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float TransIgnore() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	}
}
