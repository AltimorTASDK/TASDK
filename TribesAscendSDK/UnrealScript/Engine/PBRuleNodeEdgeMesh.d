module UnrealScript.Engine.PBRuleNodeEdgeMesh;

import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeEdgeMesh : PBRuleNodeBase
{
	public @property final auto ref float MainXPullIn() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float FlatThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
}
