module UnrealScript.Engine.PBRuleNodeCorner;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.ProcBuilding;

extern(C++) interface PBRuleNodeCorner : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeCorner")); }
	struct RBCornerAngleInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PBRuleNodeCorner.RBCornerAngleInfo")); }
		@property final auto ref
		{
			float CornerSize() { return *cast(float*)(cast(size_t)&this + 4); }
			float Angle() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PBRuleNodeCorner.RBCornerAngleInfo) Angles() { return *cast(ScriptArray!(PBRuleNodeCorner.RBCornerAngleInfo)*)(cast(size_t)cast(void*)this + 108); }
			float RoundCurvature() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			int RoundTesselation() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			float CornerShapeOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			ProcBuilding.EPBCornerType CornerType() { return *cast(ProcBuilding.EPBCornerType*)(cast(size_t)cast(void*)this + 128); }
			float FlatThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float CornerSize() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bUseAdjacentRulesetForRightGap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
		bool bUseAdjacentRulesetForRightGap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
		bool bNoMeshForConcaveCorners() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool bNoMeshForConcaveCorners(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	}
}
