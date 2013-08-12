module UnrealScript.Engine.ParticleModuleTypeDataBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleTypeDataBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTypeDataBase")); }
	private static __gshared ParticleModuleTypeDataBase mDefaultProperties;
	@property final static ParticleModuleTypeDataBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleTypeDataBase)("ParticleModuleTypeDataBase Engine.Default__ParticleModuleTypeDataBase")); }
}
