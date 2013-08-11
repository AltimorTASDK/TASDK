module UnrealScript.TribesGame.GFxTrPage_VideoSettings;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_VideoSettings : GFxTrPage
{
	public @property final auto ref int MotionBlurNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int FrameSmoothNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int VSyncNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61445], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61449], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61453], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
}
