module UnrealScript.UTGame.GFxUDKFrontEnd_InstantAction;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_LaunchGame;

extern(C++) interface GFxUDKFrontEnd_InstantAction : GFxUDKFrontEnd_LaunchGame
{
	final void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38365], cast(void*)0, cast(void*)0);
	}
	final void OnStartGame_Confirm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38366], cast(void*)0, cast(void*)0);
	}
}
