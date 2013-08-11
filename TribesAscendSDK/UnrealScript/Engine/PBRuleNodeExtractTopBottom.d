module UnrealScript.Engine.PBRuleNodeExtractTopBottom;

import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeExtractTopBottom : PBRuleNodeBase
{
	public @property final auto ref float ExtractNotBottomZ() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float ExtractBottomZ() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float ExtractNotTopZ() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float ExtractTopZ() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
}
