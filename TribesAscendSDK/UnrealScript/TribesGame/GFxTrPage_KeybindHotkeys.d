module UnrealScript.TribesGame.GFxTrPage_KeybindHotkeys;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindHotkeys : GFxTrPage_KeybindAction
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59286], cast(void*)0, cast(void*)0);
	}
}
