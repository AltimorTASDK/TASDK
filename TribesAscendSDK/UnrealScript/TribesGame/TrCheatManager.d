module UnrealScript.TribesGame.TrCheatManager;

import ScriptClasses;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTCheatManager;

extern(C++) interface TrCheatManager : UTCheatManager
{
public extern(D):
	final Weapon GiveWeapon(ScriptString WeaponClassStr)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = WeaponClassStr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74480], params.ptr, cast(void*)0);
		return *cast(Weapon*)&params[12];
	}
}
