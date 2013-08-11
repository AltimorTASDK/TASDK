module UnrealScript.UTGame.UTUIDataProvider_Weapon;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_Weapon : UTUIResourceDataProvider
{
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptString Flags() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptString AmmoClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
}
