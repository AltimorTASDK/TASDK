module UnrealScript.Engine.ActorFactoryInteractiveFoliage;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryStaticMesh;

extern(C++) interface ActorFactoryInteractiveFoliage : ActorFactoryStaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryInteractiveFoliage")); }
}
