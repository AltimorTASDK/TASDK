module UnrealScript.TribesGame.GFxTrScene_Header;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Header : GFxTrScene
{
public extern(D):
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63275], cast(void*)0, cast(void*)0);
	}
}
