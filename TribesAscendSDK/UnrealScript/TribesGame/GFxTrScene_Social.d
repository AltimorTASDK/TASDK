module UnrealScript.TribesGame.GFxTrScene_Social;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Social : GFxTrScene
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63774], cast(void*)0, cast(void*)0);
	}
}
