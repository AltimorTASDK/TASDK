module UnrealScript.Engine.AIGatherNodeBase;

import ScriptClasses;
import UnrealScript.Engine.K2NodeBase;

extern(C++) interface AIGatherNodeBase : K2NodeBase
{
public extern(D):
	@property final auto ref
	{
		ScriptString NodeName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	}
}
