module UnrealScript.Engine.ParticleModuleAccelerationBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleAccelerationBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleAccelerationBase")); }
	private static __gshared ParticleModuleAccelerationBase mDefaultProperties;
	@property final static ParticleModuleAccelerationBase DefaultProperties() { mixin(MGDPC("ParticleModuleAccelerationBase", "ParticleModuleAccelerationBase Engine.Default__ParticleModuleAccelerationBase")); }
	@property final
	{
		bool bAlwaysInWorldSpace() { mixin(MGBPC(72, 0x1)); }
		bool bAlwaysInWorldSpace(bool val) { mixin(MSBPC(72, 0x1)); }
	}
}
