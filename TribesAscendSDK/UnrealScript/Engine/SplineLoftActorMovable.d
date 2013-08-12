module UnrealScript.Engine.SplineLoftActorMovable;

import ScriptClasses;
import UnrealScript.Engine.SplineLoftActor;

extern(C++) interface SplineLoftActorMovable : SplineLoftActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SplineLoftActorMovable")); }
}
