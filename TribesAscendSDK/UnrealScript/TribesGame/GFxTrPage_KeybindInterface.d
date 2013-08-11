module UnrealScript.TribesGame.GFxTrPage_KeybindInterface;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindInterface : GFxTrPage_KeybindAction
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59289], cast(void*)0, cast(void*)0);
	}
}
