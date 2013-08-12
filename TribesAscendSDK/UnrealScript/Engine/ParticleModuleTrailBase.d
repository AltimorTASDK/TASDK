module UnrealScript.Engine.ParticleModuleTrailBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleTrailBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTrailBase")); }
	private static __gshared ParticleModuleTrailBase mDefaultProperties;
	@property final static ParticleModuleTrailBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleTrailBase)("ParticleModuleTrailBase Engine.Default__ParticleModuleTrailBase")); }
}
