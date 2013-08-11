module UnrealScript.Engine.PBRuleNodeEdgeAngle;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeEdgeAngle : PBRuleNodeBase
{
public extern(D):
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
		@property final auto ref float Angle() { return *cast(float*)(cast(size_t)&this + 0); }
	}
	@property final auto ref
	{
		ScriptArray!(PBRuleNodeEdgeAngle.RBEdgeAngleInfo) Angles() { return *cast(ScriptArray!(PBRuleNodeEdgeAngle.RBEdgeAngleInfo)*)(cast(size_t)cast(void*)this + 108); }
		PBRuleNodeEdgeAngle.EProcBuildingEdge Edge() { return *cast(PBRuleNodeEdgeAngle.EProcBuildingEdge*)(cast(size_t)cast(void*)this + 104); }
	}
}
