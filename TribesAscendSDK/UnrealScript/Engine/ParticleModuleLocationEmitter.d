module UnrealScript.Engine.ParticleModuleLocationEmitter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationBase;

extern(C++) interface ParticleModuleLocationEmitter : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleLocationEmitter")); }
	private static __gshared ParticleModuleLocationEmitter mDefaultProperties;
	@property final static ParticleModuleLocationEmitter DefaultProperties() { mixin(MGDPC("ParticleModuleLocationEmitter", "ParticleModuleLocationEmitter Engine.Default__ParticleModuleLocationEmitter")); }
	enum ELocationEmitterSelectionMethod : ubyte
	{
		ELESM_Random = 0,
		ELESM_Sequential = 1,
		ELESM_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			float InheritSourceRotationScale() { mixin(MGPC("float", 92)); }
			float InheritSourceVelocityScale() { mixin(MGPC("float", 88)); }
			ParticleModuleLocationEmitter.ELocationEmitterSelectionMethod SelectionMethod() { mixin(MGPC("ParticleModuleLocationEmitter.ELocationEmitterSelectionMethod", 80)); }
			ScriptName EmitterName() { mixin(MGPC("ScriptName", 72)); }
		}
		bool bInheritSourceRotation() { mixin(MGBPC(84, 0x2)); }
		bool bInheritSourceRotation(bool val) { mixin(MSBPC(84, 0x2)); }
		bool InheritSourceVelocity() { mixin(MGBPC(84, 0x1)); }
		bool InheritSourceVelocity(bool val) { mixin(MSBPC(84, 0x1)); }
	}
}
