module UnrealScript.Engine.PBRuleNodeSize;

import ScriptClasses;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeSize : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeSize")); }
	@property final
	{
		auto ref
		{
			float DecisionSize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			ProcBuildingRuleset.EProcBuildingAxis SizeAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bUseTopLevelScopeSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
		bool bUseTopLevelScopeSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	}
}
