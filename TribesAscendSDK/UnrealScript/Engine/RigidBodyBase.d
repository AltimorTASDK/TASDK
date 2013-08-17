module UnrealScript.Engine.RigidBodyBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface RigidBodyBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RigidBodyBase")); }
	private static __gshared RigidBodyBase mDefaultProperties;
	@property final static RigidBodyBase DefaultProperties() { mixin(MGDPC("RigidBodyBase", "RigidBodyBase Engine.Default__RigidBodyBase")); }
}
