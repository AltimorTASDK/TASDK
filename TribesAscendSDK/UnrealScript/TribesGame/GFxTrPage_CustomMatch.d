module UnrealScript.TribesGame.GFxTrPage_CustomMatch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_CustomMatch : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_CustomMatch")()); }
	private static __gshared GFxTrPage_CustomMatch mDefaultProperties;
	@property final static GFxTrPage_CustomMatch DefaultProperties() { mixin(MGDPC!(GFxTrPage_CustomMatch, "GFxTrPage_CustomMatch TribesGame.Default__GFxTrPage_CustomMatch")()); }
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
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_CustomMatch.Initialize")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_CustomMatch.FillData")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.GFxTrPage_CustomMatch.TakeFocus")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_CustomMatch.TakeAction")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_CustomMatch.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_CustomMatch.PopupComplete")()); }
			ScriptFunction FillServerBrowser() { mixin(MGF!("mFillServerBrowser", "Function TribesGame.GFxTrPage_CustomMatch.FillServerBrowser")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_CustomMatch.FillOption")()); }
			ScriptFunction ActionUp() { mixin(MGF!("mActionUp", "Function TribesGame.GFxTrPage_CustomMatch.ActionUp")()); }
			ScriptFunction ActionDown() { mixin(MGF!("mActionDown", "Function TribesGame.GFxTrPage_CustomMatch.ActionDown")()); }
			ScriptFunction GetLevelReq() { mixin(MGF!("mGetLevelReq", "Function TribesGame.GFxTrPage_CustomMatch.GetLevelReq")()); }
			ScriptFunction WaitPopup() { mixin(MGF!("mWaitPopup", "Function TribesGame.GFxTrPage_CustomMatch.WaitPopup")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_CustomMatch.ShowModel")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int SERVERS_PER_PAGE() { mixin(MGPC!(int, 432)()); }
			ScriptString QueueJoinName() { mixin(MGPC!(ScriptString, 420)()); }
			int PopupNumber() { mixin(MGPC!(int, 416)()); }
			int ServerIndex() { mixin(MGPC!(int, 412)()); }
			ScriptString ServerNameFilter() { mixin(MGPC!(ScriptString, 396)()); }
			ScriptString MapNameFilter() { mixin(MGPC!(ScriptString, 384)()); }
			int FilterServerNameNum() { mixin(MGPC!(int, 380)()); }
			int FilterOwnerNum() { mixin(MGPC!(int, 376)()); }
			int FilterFullNum() { mixin(MGPC!(int, 372)()); }
			int FilterEmptyNum() { mixin(MGPC!(int, 368)()); }
			int FilterMapNameNum() { mixin(MGPC!(int, 364)()); }
			int FilterRegionNum() { mixin(MGPC!(int, 360)()); }
			int RefreshNum() { mixin(MGPC!(int, 356)()); }
		}
		bool bWaitingForJoinPopup() { mixin(MGBPC!(408, 0x10)()); }
		bool bWaitingForJoinPopup(bool val) { mixin(MSBPC!(408, 0x10)()); }
		bool bFilterPopup() { mixin(MGBPC!(408, 0x8)()); }
		bool bFilterPopup(bool val) { mixin(MSBPC!(408, 0x8)()); }
		bool bRefresh() { mixin(MGBPC!(408, 0x4)()); }
		bool bRefresh(bool val) { mixin(MSBPC!(408, 0x4)()); }
		bool bFilterEmpty() { mixin(MGBPC!(408, 0x2)()); }
		bool bFilterEmpty(bool val) { mixin(MSBPC!(408, 0x2)()); }
		bool bFilterFull() { mixin(MGBPC!(408, 0x1)()); }
		bool bFilterFull(bool val) { mixin(MSBPC!(408, 0x1)()); }
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
