module UnrealScript.Engine.RB_BodySetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface RB_BodySetup : KMeshProps
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_BodySetup")()); }
	private static __gshared RB_BodySetup mDefaultProperties;
	@property final static RB_BodySetup DefaultProperties() { mixin(MGDPC!(RB_BodySetup, "RB_BodySetup Engine.Default__RB_BodySetup")()); }
	enum ESleepFamily : ubyte
	{
		SF_Normal = 0,
		SF_Sensitive = 1,
		SF_MAX = 2,
	}
	struct KCachedConvexData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.RB_BodySetup.KCachedConvexData")()); }
		@property final auto ref ScriptArray!(RB_BodySetup.KCachedConvexDataElement) CachedConvexElements() { mixin(MGPS!("ScriptArray!(RB_BodySetup.KCachedConvexDataElement)", 0)()); }
	}
	struct KCachedConvexDataElement
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.RB_BodySetup.KCachedConvexDataElement")()); }
		@property final auto ref ScriptArray!(ubyte) ConvexElementData() { mixin(MGPS!("ScriptArray!(ubyte)", 0)()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Pointer) CollisionGeom() { mixin(MGPC!("ScriptArray!(UObject.Pointer)", 152)()); }
			ScriptArray!(Vector) CollisionGeomScale3D() { mixin(MGPC!("ScriptArray!(Vector)", 164)()); }
			ScriptArray!(Vector) PreCachedPhysScale() { mixin(MGPC!("ScriptArray!(Vector)", 176)()); }
			ScriptArray!(RB_BodySetup.KCachedConvexData) PreCachedPhysData() { mixin(MGPC!("ScriptArray!(RB_BodySetup.KCachedConvexData)", 188)()); }
			int PreCachedPhysDataVersion() { mixin(MGPC!("int", 200)()); }
			float MassScale() { mixin(MGPC!("float", 148)()); }
			PhysicalMaterial PhysMaterial() { mixin(MGPC!("PhysicalMaterial", 144)()); }
			ScriptName BoneName() { mixin(MGPC!("ScriptName", 132)()); }
			RB_BodySetup.ESleepFamily SleepFamily() { mixin(MGPC!("RB_BodySetup.ESleepFamily", 128)()); }
		}
		bool bConsiderForBounds() { mixin(MGBPC!(140, 0x40)()); }
		bool bConsiderForBounds(bool val) { mixin(MSBPC!(140, 0x40)()); }
		bool bAlwaysFullAnimWeight() { mixin(MGBPC!(140, 0x20)()); }
		bool bAlwaysFullAnimWeight(bool val) { mixin(MSBPC!(140, 0x20)()); }
		bool bEnableContinuousCollisionDetection() { mixin(MGBPC!(140, 0x10)()); }
		bool bEnableContinuousCollisionDetection(bool val) { mixin(MSBPC!(140, 0x10)()); }
		bool bBlockNonZeroExtent() { mixin(MGBPC!(140, 0x8)()); }
		bool bBlockNonZeroExtent(bool val) { mixin(MSBPC!(140, 0x8)()); }
		bool bBlockZeroExtent() { mixin(MGBPC!(140, 0x4)()); }
		bool bBlockZeroExtent(bool val) { mixin(MSBPC!(140, 0x4)()); }
		bool bNoCollision() { mixin(MGBPC!(140, 0x2)()); }
		bool bNoCollision(bool val) { mixin(MSBPC!(140, 0x2)()); }
		bool bFixed() { mixin(MGBPC!(140, 0x1)()); }
		bool bFixed(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
}
