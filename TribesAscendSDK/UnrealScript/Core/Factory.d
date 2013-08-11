module UnrealScript.Core.Factory;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Factory : UObject
{
	public @property final auto ref ScriptArray!(ScriptString) Formats() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptArray!(ScriptString) ValidGameNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int AutoPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final bool bText() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x8) != 0; }
	public @property final bool bText(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x8; } return val; }
	public @property final bool bEditorImport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x4) != 0; }
	public @property final bool bEditorImport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x4; } return val; }
	public @property final bool bEditAfterNew() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x2) != 0; }
	public @property final bool bEditAfterNew(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x2; } return val; }
	public @property final bool bCreateNew() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x1) != 0; }
	public @property final bool bCreateNew(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x1; } return val; }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ScriptClass ContextClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptClass SupportedClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 60); }
}
