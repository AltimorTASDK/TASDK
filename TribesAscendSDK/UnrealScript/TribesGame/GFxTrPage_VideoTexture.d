module UnrealScript.TribesGame.GFxTrPage_VideoTexture;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_VideoTexture : GFxTrPage
{
public extern(D):
	enum MENU_ACTION_VIDEOTEXTURE : ubyte
	{
		MAVT_MINIMAL = 0,
		MAVT_LOW = 1,
		MAVT_MEDIUM = 2,
		MAVT_HIGH = 3,
		MAVT_VERYHIGH = 4,
		MAVT_MAX = 5,
	}
	@property final auto ref
	{
		int CurrGraphics() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
		int SettingIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61462], cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61464], params.ptr, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61466], params.ptr, cast(void*)0);
	}
	void PerformChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61468], cast(void*)0, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61469], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
}
