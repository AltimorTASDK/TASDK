module UnrealScript.TribesGame.GFxTrPage_KeybindSpectator;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_KeybindSpectator : GFxTrPage
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59330], cast(void*)0, cast(void*)0);
	}
}
