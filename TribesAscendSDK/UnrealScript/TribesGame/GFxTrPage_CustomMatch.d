module UnrealScript.TribesGame.GFxTrPage_CustomMatch;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_CustomMatch : GFxTrPage
{
public extern(D):
	@property final
	{
		auto ref
		{
			int SERVERS_PER_PAGE() { return *cast(int*)(cast(size_t)cast(void*)this + 432); }
			ScriptString QueueJoinName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 420); }
			int PopupNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 416); }
			int ServerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 412); }
			ScriptString ServerNameFilter() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
			ScriptString MapNameFilter() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
			int FilterServerNameNum() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
			int FilterOwnerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
			int FilterFullNum() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
			int FilterEmptyNum() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int FilterMapNameNum() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int FilterRegionNum() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int RefreshNum() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bWaitingForJoinPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 408) & 0x10) != 0; }
		bool bWaitingForJoinPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 408) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 408) &= ~0x10; } return val; }
		bool bFilterPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 408) & 0x8) != 0; }
		bool bFilterPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 408) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 408) &= ~0x8; } return val; }
		bool bRefresh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 408) & 0x4) != 0; }
		bool bRefresh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 408) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 408) &= ~0x4; } return val; }
		bool bFilterEmpty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 408) & 0x2) != 0; }
		bool bFilterEmpty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 408) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 408) &= ~0x2; } return val; }
		bool bFilterFull() { return (*cast(uint*)(cast(size_t)cast(void*)this + 408) & 0x1) != 0; }
		bool bFilterFull(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 408) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 408) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58504], cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58506], params.ptr, cast(void*)0);
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58509], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58513], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58520], params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58528], params.ptr, cast(void*)0);
	}
	GFxObject FillServerBrowser()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58531], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58566], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ActionUp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58574], cast(void*)0, cast(void*)0);
	}
	void ActionDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58575], cast(void*)0, cast(void*)0);
	}
	ScriptString GetLevelReq(int Min, int Max)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Min;
		*cast(int*)&params[4] = Max;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58576], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	void WaitPopup(ScriptString ServerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ServerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58580], params.ptr, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58582], cast(void*)0, cast(void*)0);
	}
}
