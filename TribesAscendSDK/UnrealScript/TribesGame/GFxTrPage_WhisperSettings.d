module UnrealScript.TribesGame.GFxTrPage_WhisperSettings;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_WhisperSettings : GFxTrPage
{
public extern(D):
	enum MENU_ACTION_WHISPER_NOTIFY_TYPE : ubyte
	{
		MAWNT_SHOWALL = 0,
		MAWNT_ONLYFRIENDS = 1,
		MAWNT_NOBODY = 2,
		MAVNT_MAX = 3,
		MENU_ACTION_WHISPER_NOTIFY_TYPE_MAX = 4,
	}
	@property final auto ref int CurrSetting() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61543], cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61545], params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61547], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61551], params.ptr, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61553], cast(void*)0, cast(void*)0);
	}
}
