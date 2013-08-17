module UnrealScript.UTGame.UTActorFactoryTeamStaticMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryStaticMesh;

extern(C++) interface UTActorFactoryTeamStaticMesh : ActorFactoryStaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTActorFactoryTeamStaticMesh")()); }
	private static __gshared UTActorFactoryTeamStaticMesh mDefaultProperties;
	@property final static UTActorFactoryTeamStaticMesh DefaultProperties() { mixin(MGDPC!(UTActorFactoryTeamStaticMesh, "UTActorFactoryTeamStaticMesh UTGame.Default__UTActorFactoryTeamStaticMesh")()); }
}
