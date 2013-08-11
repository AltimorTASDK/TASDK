module UnrealScript.Engine.Player;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface Player : UObject
{
	public @property final auto ref int CurrentNetSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	// WARNING: Property 'Actor' has the same name as a defined type!
	public @property final auto ref float PP_ShadowsMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float PP_MidTonesMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float PP_HighlightsMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float PP_DesaturationMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int ConfiguredLanSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int ConfiguredInternetSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref UObject.Pointer VfTable_FExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	final void SwitchController(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19471], params.ptr, cast(void*)0);
	}
}
