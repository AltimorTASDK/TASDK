module UnrealScript.Engine.PBRuleNodeCorner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.ProcBuilding;

extern(C++) interface PBRuleNodeCorner : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeCorner")()); }
	private static __gshared PBRuleNodeCorner mDefaultProperties;
	@property final static PBRuleNodeCorner DefaultProperties() { mixin(MGDPC!(PBRuleNodeCorner, "PBRuleNodeCorner Engine.Default__PBRuleNodeCorner")()); }
	struct RBCornerAngleInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PBRuleNodeCorner.RBCornerAngleInfo")()); }
		@property final auto ref
		{
			float CornerSize() { mixin(MGPS!(float, 4)()); }
			float Angle() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PBRuleNodeCorner.RBCornerAngleInfo) Angles() { mixin(MGPC!(ScriptArray!(PBRuleNodeCorner.RBCornerAngleInfo), 108)()); }
			float RoundCurvature() { mixin(MGPC!(float, 140)()); }
			int RoundTesselation() { mixin(MGPC!(int, 136)()); }
			float CornerShapeOffset() { mixin(MGPC!(float, 132)()); }
			ProcBuilding.EPBCornerType CornerType() { mixin(MGPC!(ProcBuilding.EPBCornerType, 128)()); }
			float FlatThreshold() { mixin(MGPC!(float, 120)()); }
			float CornerSize() { mixin(MGPC!(float, 104)()); }
		}
		bool bUseAdjacentRulesetForRightGap() { mixin(MGBPC!(124, 0x2)()); }
		bool bUseAdjacentRulesetForRightGap(bool val) { mixin(MSBPC!(124, 0x2)()); }
		bool bNoMeshForConcaveCorners() { mixin(MGBPC!(124, 0x1)()); }
		bool bNoMeshForConcaveCorners(bool val) { mixin(MSBPC!(124, 0x1)()); }
	}
}
