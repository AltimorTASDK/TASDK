module UnrealScript.TribesGame.GFxTrPage_KeybindCommunication;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindCommunication : GFxTrPage_KeybindAction
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59280], cast(void*)0, cast(void*)0);
	}
}
