module UnrealScript.UTGame.UTUIDataProvider_Weapon;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_Weapon : UTUIResourceDataProvider
{
public extern(D):
	@property final auto ref
	{
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
		ScriptString Flags() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
		ScriptString AmmoClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
		ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
	}
}
