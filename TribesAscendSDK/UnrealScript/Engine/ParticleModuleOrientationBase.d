module UnrealScript.Engine.ParticleModuleOrientationBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleOrientationBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleOrientationBase")); }
	private static __gshared ParticleModuleOrientationBase mDefaultProperties;
	@property final static ParticleModuleOrientationBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleOrientationBase)("ParticleModuleOrientationBase Engine.Default__ParticleModuleOrientationBase")); }
}
