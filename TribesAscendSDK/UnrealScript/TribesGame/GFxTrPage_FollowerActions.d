module UnrealScript.TribesGame.GFxTrPage_FollowerActions;

import ScriptClasses;
import UnrealScript.TribesGame.TrFriendManager;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_FollowerActions : GFxTrPage
{
public extern(D):
	enum
	{
		_AddAsFriend = 0,
		_JoinInGame = 1,
		_InviteToParty = 2,
		_SendMessage = 3,
		_UpdateNotes = 4,
		_InviteToTribe = 5,
		_BlockPlayer = 6,
	}
	@property final
	{
		auto ref
		{
			ScriptString AlreadyFriendText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
			TrFriendManager.EOnlineState TargetOnlineState() { return *cast(TrFriendManager.EOnlineState*)(cast(size_t)cast(void*)this + 380); }
			int TargetPlayerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
			ScriptString TargetPlayer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 364); }
			int FriendActionPopupIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bWaitingForFriendActionPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
		bool bWaitingForFriendActionPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58811], cast(void*)0, cast(void*)0);
	}
	void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58812], cast(void*)0, cast(void*)0);
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58813], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58818], params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58820], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58824], params.ptr, cast(void*)0);
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58826], params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58828], params.ptr, cast(void*)0);
	}
}
