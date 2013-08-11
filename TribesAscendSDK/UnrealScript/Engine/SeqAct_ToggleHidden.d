module UnrealScript.Engine.SeqAct_ToggleHidden;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface SeqAct_ToggleHidden : SeqAct_Toggle
{
public extern(D):
	@property final
	{
		@property final auto ref ScriptArray!(ScriptClass) IgnoreBasedClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 236); }
		bool bToggleBasedActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bToggleBasedActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
