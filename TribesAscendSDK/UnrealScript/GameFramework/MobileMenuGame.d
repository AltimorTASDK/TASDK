module UnrealScript.GameFramework.MobileMenuGame;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerController;

extern(C++) interface MobileMenuGame : GameInfo
{
	public @property final auto ref ScriptClass InitialSceneToDisplayClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 884); }
	final void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32635], params.ptr, cast(void*)0);
	}
	final void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32640], cast(void*)0, cast(void*)0);
	}
	final void RestartPlayer(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32641], params.ptr, cast(void*)0);
	}
}
