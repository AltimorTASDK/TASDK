module UnrealScript.TribesGame.GFxTrPage_KeybindVehicle;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindVehicle : GFxTrPage_KeybindAction
{
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59336], cast(void*)0, cast(void*)0);
	}
}
