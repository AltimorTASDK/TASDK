module UnrealScript.Engine.ParticleModuleRotationBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotationBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleRotationBase")); }
	private static __gshared ParticleModuleRotationBase mDefaultProperties;
	@property final static ParticleModuleRotationBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleRotationBase)("ParticleModuleRotationBase Engine.Default__ParticleModuleRotationBase")); }
}
