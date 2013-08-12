module UnrealScript.Engine.PBRuleNodeAlternate;

import ScriptClasses;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeAlternate : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeAlternate")); }
	private static __gshared PBRuleNodeAlternate mDefaultProperties;
	@property final static PBRuleNodeAlternate DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeAlternate)("PBRuleNodeAlternate Engine.Default__PBRuleNodeAlternate")); }
	@property final
	{
		auto ref
		{
			float BMaxSize() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float ASize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bEqualSizeAB() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
		bool bEqualSizeAB(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
		bool bInvertPatternOrder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
		bool bInvertPatternOrder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	}
}
