module UnrealScript.Engine.ParticleModuleParameterBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleParameterBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleParameterBase")); }
	private static __gshared ParticleModuleParameterBase mDefaultProperties;
	@property final static ParticleModuleParameterBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleParameterBase)("ParticleModuleParameterBase Engine.Default__ParticleModuleParameterBase")); }
}
