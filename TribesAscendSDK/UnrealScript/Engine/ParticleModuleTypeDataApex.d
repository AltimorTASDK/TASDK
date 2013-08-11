module UnrealScript.Engine.ParticleModuleTypeDataApex;

import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.ApexGenericAsset;

extern(C++) interface ParticleModuleTypeDataApex : ParticleModuleTypeDataBase
{
	public @property final auto ref ApexGenericAsset ApexEmitter() { return *cast(ApexGenericAsset*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ApexGenericAsset ApexIOFX() { return *cast(ApexGenericAsset*)(cast(size_t)cast(void*)this + 72); }
}
