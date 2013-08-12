module UnrealScript.Engine.NavMeshBoundsVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface NavMeshBoundsVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshBoundsVolume")); }
	private static __gshared NavMeshBoundsVolume mDefaultProperties;
	@property final static NavMeshBoundsVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NavMeshBoundsVolume)("NavMeshBoundsVolume Engine.Default__NavMeshBoundsVolume")); }
}
