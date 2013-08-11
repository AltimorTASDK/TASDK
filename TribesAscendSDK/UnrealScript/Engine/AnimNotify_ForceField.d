module UnrealScript.Engine.AnimNotify_ForceField;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_ForceField : AnimNotify
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	}
}
