module UnrealScript.Engine.SeqAct_ToggleInput;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface SeqAct_ToggleInput : SeqAct_Toggle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ToggleInput")); }
	@property final
	{
		bool bToggleMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bToggleMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
		bool bToggleTurning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bToggleTurning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	}
}
