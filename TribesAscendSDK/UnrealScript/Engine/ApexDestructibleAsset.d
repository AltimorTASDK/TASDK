module UnrealScript.Engine.ApexDestructibleAsset;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FractureMaterial;
import UnrealScript.Engine.ApexAsset;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface ApexDestructibleAsset : ApexAsset
{
public extern(D):
	struct NxDestructibleParameters
	{
		private ubyte __buffer__[128];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(ApexDestructibleAsset.NxDestructibleDepthParameters) DepthParameters() { return *cast(ScriptArray!(ApexDestructibleAsset.NxDestructibleDepthParameters)*)(cast(size_t)&this + 116); }
				float FractureImpulseScale() { return *cast(float*)(cast(size_t)&this + 112); }
				float GrbParticleSpacing() { return *cast(float*)(cast(size_t)&this + 108); }
				float GrbVolumeLimit() { return *cast(float*)(cast(size_t)&this + 104); }
				ApexDestructibleAsset.NxDestructibleParametersFlag Flags() { return *cast(ApexDestructibleAsset.NxDestructibleParametersFlag*)(cast(size_t)&this + 100); }
				float MassScaleExponent() { return *cast(float*)(cast(size_t)&this + 96); }
				float MaxChunkSpeed() { return *cast(float*)(cast(size_t)&this + 92); }
				UObject.Box ValidBounds() { return *cast(UObject.Box*)(cast(size_t)&this + 64); }
				float DebrisMaxSeparationMax() { return *cast(float*)(cast(size_t)&this + 60); }
				float DebrisMaxSeparationMin() { return *cast(float*)(cast(size_t)&this + 56); }
				float DebrisLifetimeMax() { return *cast(float*)(cast(size_t)&this + 52); }
				float DebrisLifetimeMin() { return *cast(float*)(cast(size_t)&this + 48); }
				int EssentialDepth() { return *cast(int*)(cast(size_t)&this + 44); }
				int DebrisDepth() { return *cast(int*)(cast(size_t)&this + 40); }
				int SupportDepth() { return *cast(int*)(cast(size_t)&this + 36); }
				float DeformationPercentLimit() { return *cast(float*)(cast(size_t)&this + 28); }
				float DamageToPercentDeformation() { return *cast(float*)(cast(size_t)&this + 24); }
				float MaterialStrength() { return *cast(float*)(cast(size_t)&this + 20); }
				float ImpactVelocityThreshold() { return *cast(float*)(cast(size_t)&this + 16); }
				float ForceToDamage() { return *cast(float*)(cast(size_t)&this + 12); }
				float DamageCap() { return *cast(float*)(cast(size_t)&this + 8); }
				float DamageToRadius() { return *cast(float*)(cast(size_t)&this + 4); }
				float DamageThreshold() { return *cast(float*)(cast(size_t)&this + 0); }
			}
			bool bFormExtendedStructures() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bFormExtendedStructures(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		}
	}
	struct NxDestructibleDepthParameters
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool USER_FLAG_3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
			bool USER_FLAG_3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
			bool USER_FLAG_2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
			bool USER_FLAG_2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
			bool USER_FLAG_1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
			bool USER_FLAG_1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
			bool USER_FLAG_0() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
			bool USER_FLAG_0(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
			bool IGNORE_CONTACT_CALLBACKS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
			bool IGNORE_CONTACT_CALLBACKS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
			bool IGNORE_RAYCAST_CALLBACKS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool IGNORE_RAYCAST_CALLBACKS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool IGNORE_POSE_UPDATES() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool IGNORE_POSE_UPDATES(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool TAKE_IMPACT_DAMAGE() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool TAKE_IMPACT_DAMAGE(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	struct NxDestructibleParametersFlag
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool USE_VALID_BOUNDS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
			bool USE_VALID_BOUNDS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
			bool ACCURATE_RAYCASTS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
			bool ACCURATE_RAYCASTS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
			bool CRUMBLE_SMALLEST_CHUNKS() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
			bool CRUMBLE_SMALLEST_CHUNKS(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
			bool DEBRIS_MAX_SEPARATION() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
			bool DEBRIS_MAX_SEPARATION(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
			bool DEBRIS_TIMEOUT() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
			bool DEBRIS_TIMEOUT(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
			bool WORLD_SUPPORT() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool WORLD_SUPPORT(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool ASSET_DEFINED_SUPPORT() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool ASSET_DEFINED_SUPPORT(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool ACCUMULATE_DAMAGE() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool ACCUMULATE_DAMAGE(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 112); }
			ScriptArray!(FractureMaterial) FractureMaterials() { return *cast(ScriptArray!(FractureMaterial)*)(cast(size_t)cast(void*)this + 124); }
			ApexDestructibleAsset.NxDestructibleParameters DestructibleParameters() { return *cast(ApexDestructibleAsset.NxDestructibleParameters*)(cast(size_t)cast(void*)this + 172); }
			ScriptString DustEmitterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
			ScriptString CrumbleEmitterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
			UObject.Pointer MDestructibleThumbnailComponent() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 140); }
			PhysicalMaterial DefaultPhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 136); }
			UObject.Pointer MApexAsset() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
		}
		bool bDynamic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x2) != 0; }
		bool bDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x2; } return val; }
		bool bHasUniqueAssetMaterialNames() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
		bool bHasUniqueAssetMaterialNames(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	}
}
