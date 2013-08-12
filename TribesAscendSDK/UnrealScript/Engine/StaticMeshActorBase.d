module UnrealScript.Engine.StaticMeshActorBase;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface StaticMeshActorBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticMeshActorBase")); }
	private static __gshared StaticMeshActorBase mDefaultProperties;
	@property final static StaticMeshActorBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticMeshActorBase)("StaticMeshActorBase Engine.Default__StaticMeshActorBase")); }
}
