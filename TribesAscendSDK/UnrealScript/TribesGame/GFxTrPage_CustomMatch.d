module UnrealScript.TribesGame.GFxTrPage_CustomMatch;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_CustomMatch : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_CustomMatch")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mTakeFocus;
			ScriptFunction mTakeAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mFillServerBrowser;
			ScriptFunction mFillOption;
			ScriptFunction mActionUp;
			ScriptFunction mActionDown;
			ScriptFunction mGetLevelReq;
			ScriptFunction mWaitPopup;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.Initialize")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.FillData")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.TakeFocus")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.TakeAction")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.PopupComplete")); }
			ScriptFunction FillServerBrowser() { return mFillServerBrowser ? mFillServerBrowser : (mFillServerBrowser = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.FillServerBrowser")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.FillOption")); }
			ScriptFunction ActionUp() { return mActionUp ? mActionUp : (mActionUp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.ActionUp")); }
			ScriptFunction ActionDown() { return mActionDown ? mActionDown : (mActionDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.ActionDown")); }
			ScriptFunction GetLevelReq() { return mGetLevelReq ? mGetLevelReq : (mGetLevelReq = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.GetLevelReq")); }
			ScriptFunction WaitPopup() { return mWaitPopup ? mWaitPopup : (mWaitPopup = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.WaitPopup")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_CustomMatch.ShowModel")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
	GFxObject FillServerBrowser()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillServerBrowser, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ActionUp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionUp, cast(void*)0, cast(void*)0);
	}
	void ActionDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActionDown, cast(void*)0, cast(void*)0);
	}
	ScriptString GetLevelReq(int Min, int Max)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Min;
		*cast(int*)&params[4] = Max;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLevelReq, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	void WaitPopup(ScriptString ServerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ServerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitPopup, params.ptr, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
