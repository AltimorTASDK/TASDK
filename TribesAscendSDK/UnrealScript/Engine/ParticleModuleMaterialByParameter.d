module UnrealScript.Engine.ParticleModuleMaterialByParameter;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleMaterialBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ParticleModuleMaterialByParameter : ParticleModuleMaterialBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMaterialByParameter")); }
	private static __gshared ParticleModuleMaterialByParameter mDefaultProperties;
	@property final static ParticleModuleMaterialByParameter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleMaterialByParameter)("ParticleModuleMaterialByParameter Engine.Default__ParticleModuleMaterialByParameter")); }
	@property final auto ref
	{
		ScriptArray!(ScriptName) MaterialParameters() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(MaterialInterface) DefaultMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 84); }
	}
}
