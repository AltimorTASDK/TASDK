module UnrealScript.UTGame.UTUIDataProvider_MultiplayerMenuItem;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_MultiplayerMenuItem : UTUIResourceDataProvider
{
public extern(D):
	@property final
	{
		@property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		bool bRequiresOnlineAccess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
		bool bRequiresOnlineAccess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	}
	final bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49603], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
