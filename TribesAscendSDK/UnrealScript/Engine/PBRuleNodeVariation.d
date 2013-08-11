module UnrealScript.Engine.PBRuleNodeVariation;

import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeVariation : PBRuleNodeBase
{
	public @property final bool bVariationOfScopeOnLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool bVariationOfScopeOnLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
}
