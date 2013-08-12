module UnrealScript.Core.Commandlet;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Commandlet : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Commandlet")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMain;
		public @property static final ScriptFunction Main() { return mMain ? mMain : (mMain = ScriptObject.Find!(ScriptFunction)("Function Core.Commandlet.Main")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) HelpParamNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 96); }
			ScriptArray!(ScriptString) HelpParamDescriptions() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 108); }
			ScriptString HelpWebLink() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
			ScriptString HelpUsage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
			ScriptString HelpDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
		}
		bool ShowErrorCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x10) != 0; }
		bool ShowErrorCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x10; } return val; }
		bool LogToConsole() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x8) != 0; }
		bool LogToConsole(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x8; } return val; }
		bool IsEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x4) != 0; }
		bool IsEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x4; } return val; }
		bool IsClient() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
		bool IsClient(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
		bool IsServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool IsServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	}
	final int Main(ScriptString Params)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Params;
		(cast(ScriptObject)this).ProcessEvent(Functions.Main, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
}
