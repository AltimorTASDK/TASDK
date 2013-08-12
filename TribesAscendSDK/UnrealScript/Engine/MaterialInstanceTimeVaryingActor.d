module UnrealScript.Engine.MaterialInstanceTimeVaryingActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface MaterialInstanceTimeVaryingActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialInstanceTimeVaryingActor")); }
	@property final auto ref MaterialInstanceTimeVarying MatInst() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 476); }
}
