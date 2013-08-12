module UnrealScript.Engine.ParticleModuleSubUVBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleSubUVBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSubUVBase")); }
	private static __gshared ParticleModuleSubUVBase mDefaultProperties;
	@property final static ParticleModuleSubUVBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleSubUVBase)("ParticleModuleSubUVBase Engine.Default__ParticleModuleSubUVBase")); }
}
