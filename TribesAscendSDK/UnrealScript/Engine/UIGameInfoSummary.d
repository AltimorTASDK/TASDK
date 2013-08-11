module UnrealScript.Engine.UIGameInfoSummary;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UIGameInfoSummary : UIResourceDataProvider
{
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptString GameName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptString GameSettingsClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
	public @property final bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
	public @property final bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
	public @property final bool bIsTeamGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
	public @property final bool bIsTeamGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	public @property final auto ref ScriptString MapPrefix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptString GameAcronym() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	final bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29029], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
