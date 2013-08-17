module UnrealScript.Engine.ParticleModuleVelocityBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleVelocityBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleVelocityBase")()); }
	private static __gshared ParticleModuleVelocityBase mDefaultProperties;
	@property final static ParticleModuleVelocityBase DefaultProperties() { mixin(MGDPC!(ParticleModuleVelocityBase, "ParticleModuleVelocityBase Engine.Default__ParticleModuleVelocityBase")()); }
	@property final
	{
		bool bApplyOwnerScale() { mixin(MGBPC!(72, 0x2)()); }
		bool bApplyOwnerScale(bool val) { mixin(MSBPC!(72, 0x2)()); }
		bool bInWorldSpace() { mixin(MGBPC!(72, 0x1)()); }
		bool bInWorldSpace(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
}
