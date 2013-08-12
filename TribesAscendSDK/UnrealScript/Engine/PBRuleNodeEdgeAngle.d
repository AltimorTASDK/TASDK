module UnrealScript.Engine.PBRuleNodeEdgeAngle;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeEdgeAngle : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeEdgeAngle")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PBRuleNodeEdgeAngle.RBEdgeAngleInfo")); }
		@property final auto ref float Angle() { return *cast(float*)(cast(size_t)&this + 0); }
	}
	@property final auto ref
	{
		ScriptArray!(PBRuleNodeEdgeAngle.RBEdgeAngleInfo) Angles() { return *cast(ScriptArray!(PBRuleNodeEdgeAngle.RBEdgeAngleInfo)*)(cast(size_t)cast(void*)this + 108); }
		PBRuleNodeEdgeAngle.EProcBuildingEdge Edge() { return *cast(PBRuleNodeEdgeAngle.EProcBuildingEdge*)(cast(size_t)cast(void*)this + 104); }
	}
}
