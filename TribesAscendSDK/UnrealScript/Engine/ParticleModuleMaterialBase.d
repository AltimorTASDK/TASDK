module UnrealScript.Engine.ParticleModuleMaterialBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMaterialBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMaterialBase")); }
	private static __gshared ParticleModuleMaterialBase mDefaultProperties;
	@property final static ParticleModuleMaterialBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleMaterialBase)("ParticleModuleMaterialBase Engine.Default__ParticleModuleMaterialBase")); }
}
