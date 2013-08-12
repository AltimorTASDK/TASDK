module UnrealScript.Engine.DecalActor;

import ScriptClasses;
import UnrealScript.Engine.DecalActorBase;

extern(C++) interface DecalActor : DecalActorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DecalActor")); }
}
