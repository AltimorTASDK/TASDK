module UnrealScript.UTGame.UTUIDataProvider_KeyBinding;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_KeyBinding : UTUIResourceDataProvider
{
public extern(D):
	@property final
	{
		@property final auto ref ScriptString Command() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		bool bIsCrucialBind() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
		bool bIsCrucialBind(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	}
}
