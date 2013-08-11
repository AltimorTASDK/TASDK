module UnrealScript.UTGame.UTEntryHUD;

import ScriptClasses;
import UnrealScript.Engine.HUD;

extern(C++) interface UTEntryHUD : HUD
{
public extern(D):
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47410], cast(void*)0, cast(void*)0);
	}
}
