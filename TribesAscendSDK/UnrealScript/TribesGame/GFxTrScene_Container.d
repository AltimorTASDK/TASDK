module UnrealScript.TribesGame.GFxTrScene_Container;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Container : GFxTrScene
{
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63263], cast(void*)0, cast(void*)0);
	}
}
