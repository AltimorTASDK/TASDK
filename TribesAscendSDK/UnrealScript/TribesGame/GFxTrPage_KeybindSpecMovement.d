module UnrealScript.TribesGame.GFxTrPage_KeybindSpecMovement;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindSpecMovement : GFxTrPage_KeybindAction
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59324], cast(void*)0, cast(void*)0);
	}
}
