module UnrealScript.Engine.ProcBuildingRuleset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.ProcBuilding;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.PBRuleNodeComment;

extern(C++) interface ProcBuildingRuleset : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ProcBuildingRuleset")()); }
	private static __gshared ProcBuildingRuleset mDefaultProperties;
	@property final static ProcBuildingRuleset DefaultProperties() { mixin(MGDPC!(ProcBuildingRuleset, "ProcBuildingRuleset Engine.Default__ProcBuildingRuleset")()); }
	enum EProcBuildingAxis : ubyte
	{
		EPBAxis_X = 0,
		EPBAxis_Z = 1,
		EPBAxis_MAX = 2,
	}
	struct PBParamSwatch
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ProcBuildingRuleset.PBParamSwatch")()); }
		@property final auto ref
		{
			ScriptName SwatchName() { mixin(MGPS!("ScriptName", 0)()); }
			ScriptArray!(ProcBuilding.PBMaterialParam) Params() { mixin(MGPS!("ScriptArray!(ProcBuilding.PBMaterialParam)", 8)()); }
		}
	}
	struct PBVariationInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ProcBuildingRuleset.PBVariationInfo")()); }
		@property final
		{
			@property final auto ref ScriptName VariationName() { mixin(MGPS!("ScriptName", 0)()); }
			bool bMeshOnTopOfFacePoly() { mixin(MGBPS!(8, 0x1)()); }
			bool bMeshOnTopOfFacePoly(bool val) { mixin(MSBPS!(8, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			PBRuleNodeBase RootRule() { mixin(MGPC!("PBRuleNodeBase", 60)()); }
			MaterialInterface DefaultRoofMaterial() { mixin(MGPC!("MaterialInterface", 68)()); }
			MaterialInterface DefaultFloorMaterial() { mixin(MGPC!("MaterialInterface", 72)()); }
			MaterialInterface DefaultNonRectWallMaterial() { mixin(MGPC!("MaterialInterface", 76)()); }
			float RoofZOffset() { mixin(MGPC!("float", 80)()); }
			float NotRoofZOffset() { mixin(MGPC!("float", 84)()); }
			float FloorZOffset() { mixin(MGPC!("float", 88)()); }
			float NotFloorZOffset() { mixin(MGPC!("float", 92)()); }
			float RoofPolyInset() { mixin(MGPC!("float", 96)()); }
			float FloorPolyInset() { mixin(MGPC!("float", 100)()); }
			float BuildingLODSpecular() { mixin(MGPC!("float", 104)()); }
			float RoofEdgeScopeRaise() { mixin(MGPC!("float", 108)()); }
			Texture LODCubemap() { mixin(MGPC!("Texture", 112)()); }
			Texture InteriorTexture() { mixin(MGPC!("Texture", 116)()); }
			ScriptArray!(ProcBuildingRuleset.PBVariationInfo) Variations() { mixin(MGPC!("ScriptArray!(ProcBuildingRuleset.PBVariationInfo)", 120)()); }
			ScriptArray!(ProcBuildingRuleset.PBParamSwatch) ParamSwatches() { mixin(MGPC!("ScriptArray!(ProcBuildingRuleset.PBParamSwatch)", 132)()); }
			ScriptArray!(PBRuleNodeComment) Comments() { mixin(MGPC!("ScriptArray!(PBRuleNodeComment)", 144)()); }
		}
		bool bBeingEdited() { mixin(MGBPC!(64, 0x1)()); }
		bool bBeingEdited(bool val) { mixin(MSBPC!(64, 0x1)()); }
		bool bEnableInteriorTexture() { mixin(MGBPC!(64, 0x2)()); }
		bool bEnableInteriorTexture(bool val) { mixin(MSBPC!(64, 0x2)()); }
		bool bLODOnlyRoof() { mixin(MGBPC!(64, 0x4)()); }
		bool bLODOnlyRoof(bool val) { mixin(MSBPC!(64, 0x4)()); }
		bool bPickRandomSwatch() { mixin(MGBPC!(64, 0x8)()); }
		bool bPickRandomSwatch(bool val) { mixin(MSBPC!(64, 0x8)()); }
	}
}
