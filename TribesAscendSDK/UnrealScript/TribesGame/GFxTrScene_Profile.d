module UnrealScript.TribesGame.GFxTrScene_Profile;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Profile : GFxTrScene
{
	public @property final auto ref ScriptArray!(int) ChosenClasses() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 132); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63769], cast(void*)0, cast(void*)0);
	}
}
