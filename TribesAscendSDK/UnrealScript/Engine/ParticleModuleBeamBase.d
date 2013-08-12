module UnrealScript.Engine.ParticleModuleBeamBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleBeamBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleBeamBase")); }
	private static __gshared ParticleModuleBeamBase mDefaultProperties;
	@property final static ParticleModuleBeamBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleBeamBase)("ParticleModuleBeamBase Engine.Default__ParticleModuleBeamBase")); }
	enum Beam2SourceTargetMethod : ubyte
	{
		PEB2STM_Default = 0,
		PEB2STM_UserSet = 1,
		PEB2STM_Emitter = 2,
		PEB2STM_Particle = 3,
		PEB2STM_Actor = 4,
		PEB2STM_MAX = 5,
	}
	enum Beam2SourceTargetTangentMethod : ubyte
	{
		PEB2STTM_Direct = 0,
		PEB2STTM_UserSet = 1,
		PEB2STTM_Distribution = 2,
		PEB2STTM_Emitter = 3,
		PEB2STTM_MAX = 4,
	}
}
