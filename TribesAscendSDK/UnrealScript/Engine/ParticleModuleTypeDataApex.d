module UnrealScript.Engine.ParticleModuleTypeDataApex;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTypeDataBase;
import UnrealScript.Engine.ApexGenericAsset;

extern(C++) interface ParticleModuleTypeDataApex : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataApex")()); }
	private static __gshared ParticleModuleTypeDataApex mDefaultProperties;
	@property final static ParticleModuleTypeDataApex DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataApex, "ParticleModuleTypeDataApex Engine.Default__ParticleModuleTypeDataApex")()); }
	@property final auto ref
	{
		ApexGenericAsset ApexEmitter() { mixin(MGPC!(ApexGenericAsset, 76)()); }
		ApexGenericAsset ApexIOFX() { mixin(MGPC!(ApexGenericAsset, 72)()); }
	}
}
