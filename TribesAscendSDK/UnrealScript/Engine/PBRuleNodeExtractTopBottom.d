module UnrealScript.Engine.PBRuleNodeExtractTopBottom;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeExtractTopBottom : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeExtractTopBottom")); }
	@property final auto ref
	{
		float ExtractNotBottomZ() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
		float ExtractBottomZ() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
		float ExtractNotTopZ() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
		float ExtractTopZ() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	}
}
