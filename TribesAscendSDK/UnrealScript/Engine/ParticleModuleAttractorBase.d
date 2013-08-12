module UnrealScript.Engine.ParticleModuleAttractorBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleAttractorBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleAttractorBase")); }
	private static __gshared ParticleModuleAttractorBase mDefaultProperties;
	@property final static ParticleModuleAttractorBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleAttractorBase)("ParticleModuleAttractorBase Engine.Default__ParticleModuleAttractorBase")); }
}
