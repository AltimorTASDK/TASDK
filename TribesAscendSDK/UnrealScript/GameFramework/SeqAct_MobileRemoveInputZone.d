module UnrealScript.GameFramework.SeqAct_MobileRemoveInputZone;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileRemoveInputZone : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqAct_MobileRemoveInputZone")); }
	@property final auto ref ScriptString ZoneName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
}
