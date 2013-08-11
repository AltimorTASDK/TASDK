module UnrealScript.TribesGame.TrEntryHUD;

import ScriptClasses;
import UnrealScript.Engine.HUD;

extern(C++) interface TrEntryHUD : HUD
{
public extern(D):
final:
	void CreateMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87285], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87286], cast(void*)0, cast(void*)0);
	}
}
