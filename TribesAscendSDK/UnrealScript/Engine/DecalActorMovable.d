module UnrealScript.Engine.DecalActorMovable;

import ScriptClasses;
import UnrealScript.Engine.DecalActorBase;

extern(C++) interface DecalActorMovable : DecalActorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DecalActorMovable")); }
}
