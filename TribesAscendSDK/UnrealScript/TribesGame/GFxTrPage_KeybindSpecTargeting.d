module UnrealScript.TribesGame.GFxTrPage_KeybindSpecTargeting;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindSpecTargeting : GFxTrPage_KeybindAction
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59327], cast(void*)0, cast(void*)0);
	}
}
