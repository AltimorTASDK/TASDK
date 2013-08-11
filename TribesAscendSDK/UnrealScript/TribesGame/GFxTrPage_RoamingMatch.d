module UnrealScript.TribesGame.GFxTrPage_RoamingMatch;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RoamingMatch : GFxTrPage
{
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60476], cast(void*)0, cast(void*)0);
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60481], cast(void*)0, cast(void*)0);
	}
}
