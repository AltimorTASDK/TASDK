module UnrealScript.TribesGame.GFxTrPage_PlayNow;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_PlayNow : GFxTrPage
{
	public static immutable auto QUI_CTF = 10350;
	public static immutable auto QUI_TeamRabbit = 10351;
	public static immutable auto QUI_Arena = 10352;
	public static immutable auto QUI_Rabbit = 10353;
	public static immutable auto QUI_Special = 10354;
	public static immutable auto QUI_CaptureAndHold = 10377;
	public @property final auto ref ScriptString SeasonUpcomingSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref ScriptString NoFriendsOnlineLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 464); }
	public @property final auto ref ScriptString RegionsSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 452); }
	public @property final auto ref ScriptString RegionsLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref ScriptString RankedLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref ScriptString CustomServerLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref ScriptString JoinFriendLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref ScriptString JoinFriendInGameSubLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref ScriptString JoinFriendSubLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref ScriptString CustomServerSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref ScriptString ComingSoonSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 356); }
	final int GetMeshEnumFromVV(int InVal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InVal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59970], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59973], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59974], params.ptr, cast(void*)0);
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59977], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59982], cast(void*)0, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59983], params.ptr, cast(void*)0);
	}
	final void RemoveDuplicateQueues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59987], cast(void*)0, cast(void*)0);
	}
	final bool HaveDuplicates(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59989], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59993], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60002], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
