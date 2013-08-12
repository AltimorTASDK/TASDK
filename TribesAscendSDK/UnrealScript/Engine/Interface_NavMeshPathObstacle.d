module UnrealScript.Engine.Interface_NavMeshPathObstacle;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavMeshPathObstacle : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Interface_NavMeshPathObstacle")); }
	enum EEdgeHandlingStatus : ubyte
	{
		EHS_AddedBothDirs = 0,
		EHS_Added0to1 = 1,
		EHS_Added1to0 = 2,
		EHS_AddedNone = 3,
		EHS_MAX = 4,
	}
}
