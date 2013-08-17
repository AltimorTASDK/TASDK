module UnrealScript.TribesGame.GFxTrPage_PlayNow;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_PlayNow : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_PlayNow")()); }
	private static __gshared GFxTrPage_PlayNow mDefaultProperties;
	@property final static GFxTrPage_PlayNow DefaultProperties() { mixin(MGDPC!(GFxTrPage_PlayNow, "GFxTrPage_PlayNow TribesGame.Default__GFxTrPage_PlayNow")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetMeshEnumFromVV;
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mTakeAction;
			ScriptFunction mRefreshButtons;
			ScriptFunction mFillData;
			ScriptFunction mRemoveDuplicateQueues;
			ScriptFunction mHaveDuplicates;
			ScriptFunction mFillOption;
			ScriptFunction mTakeFocus;
		}
		public @property static final
		{
			ScriptFunction GetMeshEnumFromVV() { mixin(MGF!("mGetMeshEnumFromVV", "Function TribesGame.GFxTrPage_PlayNow.GetMeshEnumFromVV")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_PlayNow.Initialize")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_PlayNow.SpecialAction")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_PlayNow.TakeAction")()); }
			ScriptFunction RefreshButtons() { mixin(MGF!("mRefreshButtons", "Function TribesGame.GFxTrPage_PlayNow.RefreshButtons")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_PlayNow.FillData")()); }
			ScriptFunction RemoveDuplicateQueues() { mixin(MGF!("mRemoveDuplicateQueues", "Function TribesGame.GFxTrPage_PlayNow.RemoveDuplicateQueues")()); }
			ScriptFunction HaveDuplicates() { mixin(MGF!("mHaveDuplicates", "Function TribesGame.GFxTrPage_PlayNow.HaveDuplicates")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_PlayNow.FillOption")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.GFxTrPage_PlayNow.TakeFocus")()); }
		}
	}
	static struct Constants
	{
		enum
		{
			QUI_CTF = 10350,
			QUI_TeamRabbit = 10351,
			QUI_Arena = 10352,
			QUI_Rabbit = 10353,
			QUI_Special = 10354,
			QUI_CaptureAndHold = 10377,
		}
	}
	@property final auto ref
	{
		ScriptString SeasonUpcomingSubtext() { mixin(MGPC!(ScriptString, 476)()); }
		ScriptString NoFriendsOnlineLabel() { mixin(MGPC!(ScriptString, 464)()); }
		ScriptString RegionsSubtext() { mixin(MGPC!(ScriptString, 452)()); }
		ScriptString RegionsLabel() { mixin(MGPC!(ScriptString, 440)()); }
		ScriptString RankedLabel() { mixin(MGPC!(ScriptString, 428)()); }
		ScriptString CustomServerLabel() { mixin(MGPC!(ScriptString, 416)()); }
		ScriptString JoinFriendLabel() { mixin(MGPC!(ScriptString, 404)()); }
		ScriptString JoinFriendInGameSubLabel() { mixin(MGPC!(ScriptString, 392)()); }
		ScriptString JoinFriendSubLabel() { mixin(MGPC!(ScriptString, 380)()); }
		ScriptString CustomServerSubtext() { mixin(MGPC!(ScriptString, 368)()); }
		ScriptString ComingSoonSubtext() { mixin(MGPC!(ScriptString, 356)()); }
	}
final:
	int GetMeshEnumFromVV(int InVal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InVal;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMeshEnumFromVV, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
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
	void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshButtons, cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	void RemoveDuplicateQueues()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveDuplicateQueues, cast(void*)0, cast(void*)0);
	}
	bool HaveDuplicates(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.HaveDuplicates, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
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
}
