module UnrealScript.Engine.ParticleModuleMaterialByParameter;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleMaterialBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ParticleModuleMaterialByParameter : ParticleModuleMaterialBase
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(ScriptName) MaterialParameters() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(MaterialInterface) DefaultMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 84); }
	}
}
