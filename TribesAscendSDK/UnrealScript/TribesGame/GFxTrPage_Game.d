module UnrealScript.TribesGame.GFxTrPage_Game;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Game : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Game")); }
	private static __gshared GFxTrPage_Game mDefaultProperties;
	@property final static GFxTrPage_Game DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_Game)("GFxTrPage_Game TribesGame.Default__GFxTrPage_Game")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mTakeAction;
			ScriptFunction mSpecialAction;
			ScriptFunction mFillOption;
			ScriptFunction mPushModel;
			ScriptFunction mHelpButton;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Game.Initialize")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Game.FillData")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Game.TakeAction")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Game.SpecialAction")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Game.FillOption")); }
			ScriptFunction PushModel() { return mPushModel ? mPushModel : (mPushModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Game.PushModel")); }
			ScriptFunction HelpButton() { return mHelpButton ? mHelpButton : (mHelpButton = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Game.HelpButton")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString strExitMatch() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 424); }
			ScriptString strManageServers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
			ScriptString strSettings() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 400); }
			ScriptString strStore() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
			ScriptString strSocial() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 376); }
			ScriptString strParty() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 364); }
			int TeamLoadoutNum() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bRemovePartyTemp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
		bool bRemovePartyTemp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
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
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void PushModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushModel, cast(void*)0, cast(void*)0);
	}
	void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HelpButton, params.ptr, cast(void*)0);
	}
}
