module UnrealScript.Engine.FogVolumeConstantDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeConstantDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeConstantDensityComponent")); }
	@property final auto ref float Density() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}
