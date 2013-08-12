module UnrealScript.UDKBase.UDKAnimBlendByHoverboardTurn;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface UDKAnimBlendByHoverboardTurn : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByHoverboardTurn")); }
	@property final auto ref
	{
		float CurrentAnimWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float MaxBlendPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float TurnScale() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	}
}
