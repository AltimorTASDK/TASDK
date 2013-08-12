module UnrealScript.UDKBase.UDKAnimBlendByPhysics;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByPhysics : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByPhysics")); }
	@property final auto ref
	{
		float PendingTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 356); }
		int PendingChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 352); }
		float LandBlendDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
		int LastPhysics() { return *cast(int*)(cast(size_t)cast(void*)this + 344); }
		int PhysicsMap() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
	}
}
