module UnrealScript.Engine.ParticleModuleMaterialByParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleMaterialBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ParticleModuleMaterialByParameter : ParticleModuleMaterialBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleMaterialByParameter")); }
	private static __gshared ParticleModuleMaterialByParameter mDefaultProperties;
	@property final static ParticleModuleMaterialByParameter DefaultProperties() { mixin(MGDPC("ParticleModuleMaterialByParameter", "ParticleModuleMaterialByParameter Engine.Default__ParticleModuleMaterialByParameter")); }
	@property final auto ref
	{
		ScriptArray!(ScriptName) MaterialParameters() { mixin(MGPC("ScriptArray!(ScriptName)", 72)); }
		ScriptArray!(MaterialInterface) DefaultMaterials() { mixin(MGPC("ScriptArray!(MaterialInterface)", 84)); }
	}
}
