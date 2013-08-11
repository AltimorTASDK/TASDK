module UnrealScript.UTGame.UTUIDataProvider_Mutator;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_Mutator : UTUIResourceDataProvider
{
	public @property final auto ref ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptString GroupNames() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptArray!(ScriptString) SupportedGameTypes() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 188); }
	public @property final bool bOfficialMutator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x2) != 0; }
	public @property final bool bOfficialMutator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x2; } return val; }
	public @property final bool bStandaloneOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1) != 0; }
	public @property final bool bStandaloneOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1; } return val; }
	final bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38898], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool SupportsCurrentGameMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49611], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
