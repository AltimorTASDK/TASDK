module UnrealScript.Engine.ParticleModuleMeshMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleMaterialBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ParticleModuleMeshMaterial : ParticleModuleMaterialBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleMeshMaterial")); }
	private static __gshared ParticleModuleMeshMaterial mDefaultProperties;
	@property final static ParticleModuleMeshMaterial DefaultProperties() { mixin(MGDPC("ParticleModuleMeshMaterial", "ParticleModuleMeshMaterial Engine.Default__ParticleModuleMeshMaterial")); }
	@property final auto ref ScriptArray!(MaterialInterface) MeshMaterials() { mixin(MGPC("ScriptArray!(MaterialInterface)", 72)); }
}
