module UnrealScript.Engine.PBRuleNodeLODQuad;

import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeLODQuad : PBRuleNodeBase
{
	public @property final auto ref float MassiveLODDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
}
