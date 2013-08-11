module UnrealScript.Engine.ParticleModuleTypeDataApex;

import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.ApexGenericAsset;

extern(C++) interface ParticleModuleTypeDataApex : ParticleModuleTypeDataBase
{
public extern(D):
	@property final auto ref
	{
		ApexGenericAsset ApexEmitter() { return *cast(ApexGenericAsset*)(cast(size_t)cast(void*)this + 76); }
		ApexGenericAsset ApexIOFX() { return *cast(ApexGenericAsset*)(cast(size_t)cast(void*)this + 72); }
	}
}
