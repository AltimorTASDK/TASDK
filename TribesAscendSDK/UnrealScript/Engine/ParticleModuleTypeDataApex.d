module UnrealScript.Engine.ParticleModuleTypeDataApex;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.ApexGenericAsset;

extern(C++) interface ParticleModuleTypeDataApex : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTypeDataApex")); }
	private static __gshared ParticleModuleTypeDataApex mDefaultProperties;
	@property final static ParticleModuleTypeDataApex DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleTypeDataApex)("ParticleModuleTypeDataApex Engine.Default__ParticleModuleTypeDataApex")); }
	@property final auto ref
	{
		ApexGenericAsset ApexEmitter() { return *cast(ApexGenericAsset*)(cast(size_t)cast(void*)this + 76); }
		ApexGenericAsset ApexIOFX() { return *cast(ApexGenericAsset*)(cast(size_t)cast(void*)this + 72); }
	}
}
