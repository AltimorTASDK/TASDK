module UnrealScript.Engine.PBRuleNodeCorner;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.ProcBuilding;

extern(C++) interface PBRuleNodeCorner : PBRuleNodeBase
{
	struct RBCornerAngleInfo
	{
		public @property final auto ref float CornerSize() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __CornerSize[4];
		public @property final auto ref float Angle() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Angle[4];
	}
	public @property final auto ref ScriptArray!(PBRuleNodeCorner.RBCornerAngleInfo) Angles() { return *cast(ScriptArray!(PBRuleNodeCorner.RBCornerAngleInfo)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float RoundCurvature() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int RoundTesselation() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float CornerShapeOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ProcBuilding.EPBCornerType CornerType() { return *cast(ProcBuilding.EPBCornerType*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bUseAdjacentRulesetForRightGap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
	public @property final bool bUseAdjacentRulesetForRightGap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
	public @property final bool bNoMeshForConcaveCorners() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bNoMeshForConcaveCorners(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final auto ref float FlatThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float CornerSize() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
}
