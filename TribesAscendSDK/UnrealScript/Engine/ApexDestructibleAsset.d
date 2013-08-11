module UnrealScript.Engine.ApexDestructibleAsset;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FractureMaterial;
import UnrealScript.Engine.ApexAsset;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface ApexDestructibleAsset : ApexAsset
{
	struct NxDestructibleParameters
	{
		public @property final auto ref ScriptArray!(ApexDestructibleAsset.NxDestructibleDepthParameters) DepthParameters() { return *cast(ScriptArray!(ApexDestructibleAsset.NxDestructibleDepthParameters)*)(cast(size_t)&this + 116); }
		private ubyte __DepthParameters[12];
		public @property final auto ref float FractureImpulseScale() { return *cast(float*)(cast(size_t)&this + 112); }
		private ubyte __FractureImpulseScale[4];
		public @property final auto ref float GrbParticleSpacing() { return *cast(float*)(cast(size_t)&this + 108); }
		private ubyte __GrbParticleSpacing[4];
		public @property final auto ref float GrbVolumeLimit() { return *cast(float*)(cast(size_t)&this + 104); }
		private ubyte __GrbVolumeLimit[4];
		public @property final auto ref ApexDestructibleAsset.NxDestructibleParametersFlag Flags() { return *cast(ApexDestructibleAsset.NxDestructibleParametersFlag*)(cast(size_t)&this + 100); }
		private ubyte __Flags[4];
		public @property final auto ref float MassScaleExponent() { return *cast(float*)(cast(size_t)&this + 96); }
		private ubyte __MassScaleExponent[4];
		public @property final auto ref float MaxChunkSpeed() { return *cast(float*)(cast(size_t)&this + 92); }
		private ubyte __MaxChunkSpeed[4];
		public @property final auto ref UObject.Box ValidBounds() { return *cast(UObject.Box*)(cast(size_t)&this + 64); }
		private ubyte __ValidBounds[28];
		public @property final auto ref float DebrisMaxSeparationMax() { return *cast(float*)(cast(size_t)&this + 60); }
		private ubyte __DebrisMaxSeparationMax[4];
		public @property final auto ref float DebrisMaxSeparationMin() { return *cast(float*)(cast(size_t)&this + 56); }
		private ubyte __DebrisMaxSeparationMin[4];
		public @property final auto ref float DebrisLifetimeMax() { return *cast(float*)(cast(size_t)&this + 52); }
		private ubyte __DebrisLifetimeMax[4];
		public @property final auto ref float DebrisLifetimeMin() { return *cast(float*)(cast(size_t)&this + 48); }
		private ubyte __DebrisLifetimeMin[4];
		public @property final auto ref int EssentialDepth() { return *cast(int*)(cast(size_t)&this + 44); }
		private ubyte __EssentialDepth[4];
		public @property final auto ref int DebrisDepth() { return *cast(int*)(cast(size_t)&this + 40); }
		private ubyte __DebrisDepth[4];
		public @property final auto ref int SupportDepth() { return *cast(int*)(cast(size_t)&this + 36); }
		private ubyte __SupportDepth[4];
		public @property final bool bFormExtendedStructures() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
		public @property final bool bFormExtendedStructures(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		private ubyte __bFormExtendedStructures[4];
		public @property final auto ref float DeformationPercentLimit() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __DeformationPercentLimit[4];
		public @property final auto ref float DamageToPercentDeformation() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __DamageToPercentDeformation[4];
		public @property final auto ref float MaterialStrength() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __MaterialStrength[4];
		public @property final auto ref float ImpactVelocityThreshold() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __ImpactVelocityThreshold[4];
		public @property final auto ref float ForceToDamage() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __ForceToDamage[4];
		public @property final auto ref float DamageCap() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __DamageCap[4];
		public @property final auto ref float DamageToRadius() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __DamageToRadius[4];
		public @property final auto ref float DamageThreshold() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __DamageThreshold[4];
	}
	struct NxDestructibleDepthParameters
	{
		public @property final bool USER_FLAG_3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
		public @property final bool USER_FLAG_3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
		private ubyte __USER_FLAG_3[4];
		public @property final bool USER_FLAG_2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
		public @property final bool USER_FLAG_2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
		private ubyte __USER_FLAG_2[4];
		public @property final bool USER_FLAG_1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
		public @property final bool USER_FLAG_1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		private ubyte __USER_FLAG_1[4];
		public @property final bool USER_FLAG_0() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
		public @property final bool USER_FLAG_0(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
		private ubyte __USER_FLAG_0[4];
		public @property final bool IGNORE_CONTACT_CALLBACKS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
		public @property final bool IGNORE_CONTACT_CALLBACKS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		private ubyte __IGNORE_CONTACT_CALLBACKS[4];
		public @property final bool IGNORE_RAYCAST_CALLBACKS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool IGNORE_RAYCAST_CALLBACKS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __IGNORE_RAYCAST_CALLBACKS[4];
		public @property final bool IGNORE_POSE_UPDATES() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool IGNORE_POSE_UPDATES(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __IGNORE_POSE_UPDATES[4];
		public @property final bool TAKE_IMPACT_DAMAGE() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool TAKE_IMPACT_DAMAGE(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __TAKE_IMPACT_DAMAGE[4];
	}
	struct NxDestructibleParametersFlag
	{
		public @property final bool USE_VALID_BOUNDS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
		public @property final bool USE_VALID_BOUNDS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
		private ubyte __USE_VALID_BOUNDS[4];
		public @property final bool ACCURATE_RAYCASTS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
		public @property final bool ACCURATE_RAYCASTS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
		private ubyte __ACCURATE_RAYCASTS[4];
		public @property final bool CRUMBLE_SMALLEST_CHUNKS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
		public @property final bool CRUMBLE_SMALLEST_CHUNKS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		private ubyte __CRUMBLE_SMALLEST_CHUNKS[4];
		public @property final bool DEBRIS_MAX_SEPARATION() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
		public @property final bool DEBRIS_MAX_SEPARATION(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
		private ubyte __DEBRIS_MAX_SEPARATION[4];
		public @property final bool DEBRIS_TIMEOUT() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
		public @property final bool DEBRIS_TIMEOUT(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		private ubyte __DEBRIS_TIMEOUT[4];
		public @property final bool WORLD_SUPPORT() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool WORLD_SUPPORT(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __WORLD_SUPPORT[4];
		public @property final bool ASSET_DEFINED_SUPPORT() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool ASSET_DEFINED_SUPPORT(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __ASSET_DEFINED_SUPPORT[4];
		public @property final bool ACCUMULATE_DAMAGE() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool ACCUMULATE_DAMAGE(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __ACCUMULATE_DAMAGE[4];
	}
	public @property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptArray!(FractureMaterial) FractureMaterials() { return *cast(ScriptArray!(FractureMaterial)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ApexDestructibleAsset.NxDestructibleParameters DestructibleParameters() { return *cast(ApexDestructibleAsset.NxDestructibleParameters*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptString DustEmitterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref ScriptString CrumbleEmitterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
	public @property final bool bDynamic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x2) != 0; }
	public @property final bool bDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x2; } return val; }
	public @property final bool bHasUniqueAssetMaterialNames() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
	public @property final bool bHasUniqueAssetMaterialNames(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer MDestructibleThumbnailComponent() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref PhysicalMaterial DefaultPhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref UObject.Pointer MApexAsset() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
}
