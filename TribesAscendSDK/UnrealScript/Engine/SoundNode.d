module UnrealScript.Engine.SoundNode;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SoundNode : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(SoundNode) ChildNodes() { return *cast(ScriptArray!(SoundNode)*)(cast(size_t)cast(void*)this + 64); }
		int NodeUpdateHint() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
