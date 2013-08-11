module UnrealScript.Engine.UICharacterSummary;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UICharacterSummary : UIResourceDataProvider
{
	public @property final bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
	public @property final bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	public @property final auto ref ScriptString CharacterBio() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptString CharacterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptString ClassPathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	final bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28118], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
