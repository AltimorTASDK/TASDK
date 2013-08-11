module UnrealScript.TribesGame.GFxTrPage_RoamTDM;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RoamTDM : GFxTrPage
{
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60494], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60495], params.ptr, cast(void*)0);
	}
	final void JoinLocalGame(ScriptString SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60497], params.ptr, cast(void*)0);
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60499], cast(void*)0, cast(void*)0);
	}
}
