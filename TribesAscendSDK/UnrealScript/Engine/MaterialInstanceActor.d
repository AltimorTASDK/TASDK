module UnrealScript.Engine.MaterialInstanceActor;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Actor;

extern(C++) interface MaterialInstanceActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialInstanceActor")); }
	@property final auto ref MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 476); }
}
