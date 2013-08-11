module UnrealScript.TribesGame.GFxTrPage_PlayNow;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_PlayNow : GFxTrPage
{
public extern(D):
	enum
	{
		QUI_CTF = 10350,
		QUI_TeamRabbit = 10351,
		QUI_Arena = 10352,
		QUI_Rabbit = 10353,
		QUI_Special = 10354,
		QUI_CaptureAndHold = 10377,
	}
	@property final auto ref
	{
		ScriptString SeasonUpcomingSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
		ScriptString NoFriendsOnlineLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 464); }
		ScriptString RegionsSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 452); }
		ScriptString RegionsLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 440); }
		ScriptString RankedLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 428); }
		ScriptString CustomServerLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 416); }
		ScriptString JoinFriendLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 404); }
		ScriptString JoinFriendInGameSubLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
		ScriptString JoinFriendSubLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
		ScriptString CustomServerSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 368); }
		ScriptString ComingSoonSubtext() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 356); }
	}
final:
	int GetMeshEnumFromVV(int InVal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InVal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59970], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59973], cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59974], params.ptr, cast(void*)0);
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59977], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59982], cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59983], params.ptr, cast(void*)0);
	}
	void RemoveDuplicateQueues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59987], cast(void*)0, cast(void*)0);
	}
	bool HaveDuplicates(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59989], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59993], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60002], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
