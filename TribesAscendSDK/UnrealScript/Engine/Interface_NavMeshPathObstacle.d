module UnrealScript.Engine.Interface_NavMeshPathObstacle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavMeshPathObstacle : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Interface_NavMeshPathObstacle")()); }
	private static __gshared Interface_NavMeshPathObstacle mDefaultProperties;
	@property final static Interface_NavMeshPathObstacle DefaultProperties() { mixin(MGDPC!(Interface_NavMeshPathObstacle, "Interface_NavMeshPathObstacle Engine.Default__Interface_NavMeshPathObstacle")()); }
	enum EEdgeHandlingStatus : ubyte
	{
		EHS_AddedBothDirs = 0,
		EHS_Added0to1 = 1,
		EHS_Added1to0 = 2,
		EHS_AddedNone = 3,
		EHS_MAX = 4,
	}
}
