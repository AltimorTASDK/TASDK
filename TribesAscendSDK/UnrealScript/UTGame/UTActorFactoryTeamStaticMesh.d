module UnrealScript.UTGame.UTActorFactoryTeamStaticMesh;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryStaticMesh;

extern(C++) interface UTActorFactoryTeamStaticMesh : ActorFactoryStaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTActorFactoryTeamStaticMesh")); }
}
