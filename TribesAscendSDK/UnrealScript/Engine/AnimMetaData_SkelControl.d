module UnrealScript.Engine.AnimMetaData_SkelControl;

import ScriptClasses;
import UnrealScript.Engine.AnimMetaData;

extern(C++) interface AnimMetaData_SkelControl : AnimMetaData
{
	public @property final auto ref ScriptArray!(ScriptName) SkelControlNameList() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bFullControlOverController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bFullControlOverController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
}
