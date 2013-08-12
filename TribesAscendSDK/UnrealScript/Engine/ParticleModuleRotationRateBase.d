module UnrealScript.Engine.ParticleModuleRotationRateBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotationRateBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleRotationRateBase")); }
	private static __gshared ParticleModuleRotationRateBase mDefaultProperties;
	@property final static ParticleModuleRotationRateBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleRotationRateBase)("ParticleModuleRotationRateBase Engine.Default__ParticleModuleRotationRateBase")); }
}
