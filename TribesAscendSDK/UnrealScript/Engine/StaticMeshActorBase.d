module UnrealScript.Engine.StaticMeshActorBase;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface StaticMeshActorBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticMeshActorBase")); }
}
