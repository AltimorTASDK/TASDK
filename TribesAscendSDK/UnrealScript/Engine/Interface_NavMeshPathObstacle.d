module UnrealScript.Engine.Interface_NavMeshPathObstacle;

import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavMeshPathObstacle : UInterface
{
	enum EEdgeHandlingStatus : ubyte
	{
		EHS_AddedBothDirs = 0,
		EHS_Added0to1 = 1,
		EHS_Added1to0 = 2,
		EHS_AddedNone = 3,
		EHS_MAX = 4,
	}
}
