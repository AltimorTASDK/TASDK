module UnrealScript.Engine.PBRuleNodeEdgeMesh;

import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeEdgeMesh : PBRuleNodeBase
{
public extern(D):
	@property final auto ref
	{
		float MainXPullIn() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
		float FlatThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	}
}
