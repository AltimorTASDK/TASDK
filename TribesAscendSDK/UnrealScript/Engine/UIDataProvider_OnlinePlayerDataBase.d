module UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_OnlinePlayerDataBase : UIDataProvider
{
	public @property final auto ref int PlayerControllerId() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	final void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28152], params.ptr, cast(void*)0);
	}
	final void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28154], cast(void*)0, cast(void*)0);
	}
}
