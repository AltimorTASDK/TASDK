module UnrealScript.Engine.ParticleModuleMeshMaterial;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleMaterialBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ParticleModuleMeshMaterial : ParticleModuleMaterialBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMeshMaterial")); }
	@property final auto ref ScriptArray!(MaterialInterface) MeshMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 72); }
}
