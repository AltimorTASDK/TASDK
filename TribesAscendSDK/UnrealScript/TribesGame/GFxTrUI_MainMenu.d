module UnrealScript.TribesGame.GFxTrUI_MainMenu;

import ScriptClasses;
import UnrealScript.UTGame.GFxUI_PauseMenu;

extern(C++) interface GFxTrUI_MainMenu : GFxUI_PauseMenu
{
	public @property final auto ref GFxUI_PauseMenu FamilyMenuMovie() { return *cast(GFxUI_PauseMenu*)(cast(size_t)cast(void*)this + 448); }
	final bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65157], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
