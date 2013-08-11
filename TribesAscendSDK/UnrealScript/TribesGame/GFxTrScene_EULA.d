module UnrealScript.TribesGame.GFxTrScene_EULA;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_EULA : GFxTrScene
{
	public @property final auto ref ScriptString EULA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	final void LoadEULA()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63265], cast(void*)0, cast(void*)0);
	}
	final void AcceptEULA()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63266], cast(void*)0, cast(void*)0);
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63267], cast(void*)0, cast(void*)0);
	}
	final void EULAReponse(bool bAccepted)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAccepted;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63268], params.ptr, cast(void*)0);
	}
}
