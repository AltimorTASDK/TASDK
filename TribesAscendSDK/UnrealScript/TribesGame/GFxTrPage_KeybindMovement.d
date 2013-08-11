module UnrealScript.TribesGame.GFxTrPage_KeybindMovement;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindMovement : GFxTrPage_KeybindAction
{
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59292], cast(void*)0, cast(void*)0);
	}
}
