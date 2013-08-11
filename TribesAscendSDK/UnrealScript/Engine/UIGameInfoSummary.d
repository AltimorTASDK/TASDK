module UnrealScript.Engine.UIGameInfoSummary;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UIGameInfoSummary : UIResourceDataProvider
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
			ScriptString GameName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
			ScriptString GameSettingsClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
			ScriptString MapPrefix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
			ScriptString GameAcronym() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
			ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		}
		bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
		bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
		bool bIsTeamGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool bIsTeamGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
	final bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29029], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
