module UnrealScript.TribesGame.GFxTrPage_PlayNow;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_PlayNow : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_PlayNow")); }
	private static __gshared GFxTrPage_PlayNow mDefaultProperties;
	@property final static GFxTrPage_PlayNow DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_PlayNow)("GFxTrPage_PlayNow TribesGame.Default__GFxTrPage_PlayNow")); }
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
			ScriptFunction GetMeshEnumFromVV() { return mGetMeshEnumFromVV ? mGetMeshEnumFromVV : (mGetMeshEnumFromVV = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.GetMeshEnumFromVV")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.SpecialAction")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.TakeAction")); }
			ScriptFunction RefreshButtons() { return mRefreshButtons ? mRefreshButtons : (mRefreshButtons = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.RefreshButtons")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.FillData")); }
			ScriptFunction RemoveDuplicateQueues() { return mRemoveDuplicateQueues ? mRemoveDuplicateQueues : (mRemoveDuplicateQueues = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.RemoveDuplicateQueues")); }
			ScriptFunction HaveDuplicates() { return mHaveDuplicates ? mHaveDuplicates : (mHaveDuplicates = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.HaveDuplicates")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.FillOption")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_PlayNow.TakeFocus")); }
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
