module UnrealScript.Engine.PBRuleNodeEdgeAngle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeEdgeAngle : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PBRuleNodeEdgeAngle")()); }
	private static __gshared PBRuleNodeEdgeAngle mDefaultProperties;
	@property final static PBRuleNodeEdgeAngle DefaultProperties() { mixin(MGDPC!(PBRuleNodeEdgeAngle, "PBRuleNodeEdgeAngle Engine.Default__PBRuleNodeEdgeAngle")()); }
	enum EProcBuildingEdge : ubyte
	{
		EPBE_Top = 0,
		EPBE_Bottom = 1,
		EPBE_Left = 2,
		EPBE_Right = 3,
		EPBE_MAX = 4,
	}
	struct RBEdgeAngleInfo
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PBRuleNodeEdgeAngle.RBEdgeAngleInfo")()); }
		@property final auto ref float Angle() { mixin(MGPS!(float, 0)()); }
	}
	@property final auto ref
	{
		ScriptArray!(PBRuleNodeEdgeAngle.RBEdgeAngleInfo) Angles() { mixin(MGPC!(ScriptArray!(PBRuleNodeEdgeAngle.RBEdgeAngleInfo), 108)()); }
		PBRuleNodeEdgeAngle.EProcBuildingEdge Edge() { mixin(MGPC!(PBRuleNodeEdgeAngle.EProcBuildingEdge, 104)()); }
	}
}
