module UnrealScript.Core.Commandlet;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Commandlet : UObject
{
	public @property final auto ref ScriptArray!(ScriptString) HelpParamNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(ScriptString) HelpParamDescriptions() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool ShowErrorCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x10) != 0; }
	public @property final bool ShowErrorCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x10; } return val; }
	public @property final bool LogToConsole() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x8) != 0; }
	public @property final bool LogToConsole(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x8; } return val; }
	public @property final bool IsEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x4) != 0; }
	public @property final bool IsEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x4; } return val; }
	public @property final bool IsClient() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
	public @property final bool IsClient(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
	public @property final bool IsServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool IsServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref ScriptString HelpWebLink() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptString HelpUsage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptString HelpDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	final int Main(ScriptString Params)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Params;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3424], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
}
