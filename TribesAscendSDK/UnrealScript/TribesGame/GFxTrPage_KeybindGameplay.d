module UnrealScript.TribesGame.GFxTrPage_KeybindGameplay;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindGameplay : GFxTrPage_KeybindAction
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59283], cast(void*)0, cast(void*)0);
	}
}
