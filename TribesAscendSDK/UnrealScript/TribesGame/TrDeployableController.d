module UnrealScript.TribesGame.TrDeployableController;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Weapon;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrDeployableController : AIController
{
	public @property final auto ref TrPlayerController m_SpawnedFromController() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 924); }
	final bool CanFireWeapon(Weapon Wpn, ubyte FireModeNum)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Weapon*)params.ptr = Wpn;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80486], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final ubyte ScriptGetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80490], params.ptr, cast(void*)0);
		return params[0];
	}
}
