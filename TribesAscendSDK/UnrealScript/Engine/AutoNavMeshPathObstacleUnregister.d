module UnrealScript.Engine.AutoNavMeshPathObstacleUnregister;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface AutoNavMeshPathObstacleUnregister : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AutoNavMeshPathObstacleUnregister")); }
	private static __gshared AutoNavMeshPathObstacleUnregister mDefaultProperties;
	@property final static AutoNavMeshPathObstacleUnregister DefaultProperties() { mixin(MGDPC("AutoNavMeshPathObstacleUnregister", "AutoNavMeshPathObstacleUnregister Engine.Default__AutoNavMeshPathObstacleUnregister")); }
	// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'PathObstacleRef'!
}
