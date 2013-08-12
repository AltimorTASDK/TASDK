module UnrealScript.Engine.AutoNavMeshPathObstacleUnregister;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AutoNavMeshPathObstacleUnregister : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AutoNavMeshPathObstacleUnregister")); }
	private static __gshared AutoNavMeshPathObstacleUnregister mDefaultProperties;
	@property final static AutoNavMeshPathObstacleUnregister DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AutoNavMeshPathObstacleUnregister)("AutoNavMeshPathObstacleUnregister Engine.Default__AutoNavMeshPathObstacleUnregister")); }
}
