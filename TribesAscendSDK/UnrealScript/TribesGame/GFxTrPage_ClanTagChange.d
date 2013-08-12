module UnrealScript.TribesGame.GFxTrPage_ClanTagChange;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_VendorTable;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ClanTagChange : GFxTrPage_VendorTable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_ClanTagChange")); }
	private static __gshared GFxTrPage_ClanTagChange mDefaultProperties;
	@property final static GFxTrPage_ClanTagChange DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_ClanTagChange)("GFxTrPage_ClanTagChange TribesGame.Default__GFxTrPage_ClanTagChange")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mFillDescription;
			ScriptFunction mModifyAction;
			ScriptFunction mCheckPricing;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClanTagChange.FillData")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClanTagChange.FillOption")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClanTagChange.FillDescription")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClanTagChange.ModifyAction")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClanTagChange.CheckPricing")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClanTagChange.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClanTagChange.PopupComplete")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClanTagChange.ShowModel")); }
		}
	}
	@property final auto ref
	{
		ScriptString RemovePopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 464); }
		ScriptString ChangePopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 452); }
		ScriptString RemovePopupBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 440); }
		ScriptString ChangePopupBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 428); }
		int RemoveItem() { return *cast(int*)(cast(size_t)cast(void*)this + 424); }
		int ChangeItem() { return *cast(int*)(cast(size_t)cast(void*)this + 420); }
		int xpPrice() { return *cast(int*)(cast(size_t)cast(void*)this + 416); }
		int gpPrice() { return *cast(int*)(cast(size_t)cast(void*)this + 412); }
		int CurrencyNum() { return *cast(int*)(cast(size_t)cast(void*)this + 408); }
		int ConfirmNum() { return *cast(int*)(cast(size_t)cast(void*)this + 404); }
		int EntryNum() { return *cast(int*)(cast(size_t)cast(void*)this + 400); }
		int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
	}
final:
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPricing, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
