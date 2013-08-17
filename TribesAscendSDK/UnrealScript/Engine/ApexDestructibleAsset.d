module UnrealScript.Engine.ApexDestructibleAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FractureMaterial;
import UnrealScript.Engine.ApexAsset;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface ApexDestructibleAsset : ApexAsset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ApexDestructibleAsset")()); }
	private static __gshared ApexDestructibleAsset mDefaultProperties;
	@property final static ApexDestructibleAsset DefaultProperties() { mixin(MGDPC!(ApexDestructibleAsset, "ApexDestructibleAsset Engine.Default__ApexDestructibleAsset")()); }
	struct NxDestructibleParameters
	{
		private ubyte __buffer__[128];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ApexDestructibleAsset.NxDestructibleParameters")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ApexDestructibleAsset.NxDestructibleDepthParameters) DepthParameters() { mixin(MGPS!("ScriptArray!(ApexDestructibleAsset.NxDestructibleDepthParameters)", 116)()); }
				float FractureImpulseScale() { mixin(MGPS!("float", 112)()); }
				float GrbParticleSpacing() { mixin(MGPS!("float", 108)()); }
				float GrbVolumeLimit() { mixin(MGPS!("float", 104)()); }
				ApexDestructibleAsset.NxDestructibleParametersFlag Flags() { mixin(MGPS!("ApexDestructibleAsset.NxDestructibleParametersFlag", 100)()); }
				float MassScaleExponent() { mixin(MGPS!("float", 96)()); }
				float MaxChunkSpeed() { mixin(MGPS!("float", 92)()); }
				UObject.Box ValidBounds() { mixin(MGPS!("UObject.Box", 64)()); }
				float DebrisMaxSeparationMax() { mixin(MGPS!("float", 60)()); }
				float DebrisMaxSeparationMin() { mixin(MGPS!("float", 56)()); }
				float DebrisLifetimeMax() { mixin(MGPS!("float", 52)()); }
				float DebrisLifetimeMin() { mixin(MGPS!("float", 48)()); }
				int EssentialDepth() { mixin(MGPS!("int", 44)()); }
				int DebrisDepth() { mixin(MGPS!("int", 40)()); }
				int SupportDepth() { mixin(MGPS!("int", 36)()); }
				float DeformationPercentLimit() { mixin(MGPS!("float", 28)()); }
				float DamageToPercentDeformation() { mixin(MGPS!("float", 24)()); }
				float MaterialStrength() { mixin(MGPS!("float", 20)()); }
				float ImpactVelocityThreshold() { mixin(MGPS!("float", 16)()); }
				float ForceToDamage() { mixin(MGPS!("float", 12)()); }
				float DamageCap() { mixin(MGPS!("float", 8)()); }
				float DamageToRadius() { mixin(MGPS!("float", 4)()); }
				float DamageThreshold() { mixin(MGPS!("float", 0)()); }
			}
			bool bFormExtendedStructures() { mixin(MGBPS!(32, 0x1)()); }
			bool bFormExtendedStructures(bool val) { mixin(MSBPS!(32, 0x1)()); }
		}
	}
	struct NxDestructibleDepthParameters
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ApexDestructibleAsset.NxDestructibleDepthParameters")()); }
		@property final
		{
			bool USER_FLAG_3() { mixin(MGBPS!(0, 0x80)()); }
			bool USER_FLAG_3(bool val) { mixin(MSBPS!(0, 0x80)()); }
			bool USER_FLAG_2() { mixin(MGBPS!(0, 0x40)()); }
			bool USER_FLAG_2(bool val) { mixin(MSBPS!(0, 0x40)()); }
			bool USER_FLAG_1() { mixin(MGBPS!(0, 0x20)()); }
			bool USER_FLAG_1(bool val) { mixin(MSBPS!(0, 0x20)()); }
			bool USER_FLAG_0() { mixin(MGBPS!(0, 0x10)()); }
			bool USER_FLAG_0(bool val) { mixin(MSBPS!(0, 0x10)()); }
			bool IGNORE_CONTACT_CALLBACKS() { mixin(MGBPS!(0, 0x8)()); }
			bool IGNORE_CONTACT_CALLBACKS(bool val) { mixin(MSBPS!(0, 0x8)()); }
			bool IGNORE_RAYCAST_CALLBACKS() { mixin(MGBPS!(0, 0x4)()); }
			bool IGNORE_RAYCAST_CALLBACKS(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool IGNORE_POSE_UPDATES() { mixin(MGBPS!(0, 0x2)()); }
			bool IGNORE_POSE_UPDATES(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool TAKE_IMPACT_DAMAGE() { mixin(MGBPS!(0, 0x1)()); }
			bool TAKE_IMPACT_DAMAGE(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	struct NxDestructibleParametersFlag
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ApexDestructibleAsset.NxDestructibleParametersFlag")()); }
		@property final
		{
			bool USE_VALID_BOUNDS() { mixin(MGBPS!(0, 0x80)()); }
			bool USE_VALID_BOUNDS(bool val) { mixin(MSBPS!(0, 0x80)()); }
			bool ACCURATE_RAYCASTS() { mixin(MGBPS!(0, 0x40)()); }
			bool ACCURATE_RAYCASTS(bool val) { mixin(MSBPS!(0, 0x40)()); }
			bool CRUMBLE_SMALLEST_CHUNKS() { mixin(MGBPS!(0, 0x20)()); }
			bool CRUMBLE_SMALLEST_CHUNKS(bool val) { mixin(MSBPS!(0, 0x20)()); }
			bool DEBRIS_MAX_SEPARATION() { mixin(MGBPS!(0, 0x10)()); }
			bool DEBRIS_MAX_SEPARATION(bool val) { mixin(MSBPS!(0, 0x10)()); }
			bool DEBRIS_TIMEOUT() { mixin(MGBPS!(0, 0x8)()); }
			bool DEBRIS_TIMEOUT(bool val) { mixin(MSBPS!(0, 0x8)()); }
			bool WORLD_SUPPORT() { mixin(MGBPS!(0, 0x4)()); }
			bool WORLD_SUPPORT(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool ASSET_DEFINED_SUPPORT() { mixin(MGBPS!(0, 0x2)()); }
			bool ASSET_DEFINED_SUPPORT(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool ACCUMULATE_DAMAGE() { mixin(MGBPS!(0, 0x1)()); }
			bool ACCUMULATE_DAMAGE(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInterface) Materials() { mixin(MGPC!("ScriptArray!(MaterialInterface)", 112)()); }
			ScriptArray!(FractureMaterial) FractureMaterials() { mixin(MGPC!("ScriptArray!(FractureMaterial)", 124)()); }
			ApexDestructibleAsset.NxDestructibleParameters DestructibleParameters() { mixin(MGPC!("ApexDestructibleAsset.NxDestructibleParameters", 172)()); }
			ScriptString DustEmitterName() { mixin(MGPC!("ScriptString", 160)()); }
			ScriptString CrumbleEmitterName() { mixin(MGPC!("ScriptString", 148)()); }
			UObject.Pointer MDestructibleThumbnailComponent() { mixin(MGPC!("UObject.Pointer", 140)()); }
			PhysicalMaterial DefaultPhysMaterial() { mixin(MGPC!("PhysicalMaterial", 136)()); }
			UObject.Pointer MApexAsset() { mixin(MGPC!("UObject.Pointer", 108)()); }
		}
		bool bDynamic() { mixin(MGBPC!(144, 0x2)()); }
		bool bDynamic(bool val) { mixin(MSBPC!(144, 0x2)()); }
		bool bHasUniqueAssetMaterialNames() { mixin(MGBPC!(144, 0x1)()); }
		bool bHasUniqueAssetMaterialNames(bool val) { mixin(MSBPC!(144, 0x1)()); }
	}
}
