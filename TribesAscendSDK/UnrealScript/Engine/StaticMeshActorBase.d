module UnrealScript.Engine.StaticMeshActorBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface StaticMeshActorBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.StaticMeshActorBase")); }
	private static __gshared StaticMeshActorBase mDefaultProperties;
	@property final static StaticMeshActorBase DefaultProperties() { mixin(MGDPC("StaticMeshActorBase", "StaticMeshActorBase Engine.Default__StaticMeshActorBase")); }
}
