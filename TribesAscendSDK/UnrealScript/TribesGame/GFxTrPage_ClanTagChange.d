module UnrealScript.TribesGame.GFxTrPage_ClanTagChange;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_VendorTable;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ClanTagChange : GFxTrPage_VendorTable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_ClanTagChange")); }
	private static __gshared GFxTrPage_ClanTagChange mDefaultProperties;
	@property final static GFxTrPage_ClanTagChange DefaultProperties() { mixin(MGDPC("GFxTrPage_ClanTagChange", "GFxTrPage_ClanTagChange TribesGame.Default__GFxTrPage_ClanTagChange")); }
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
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage_ClanTagChange.FillData")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_ClanTagChange.FillOption")); }
			ScriptFunction FillDescription() { mixin(MGF("mFillDescription", "Function TribesGame.GFxTrPage_ClanTagChange.FillDescription")); }
			ScriptFunction ModifyAction() { mixin(MGF("mModifyAction", "Function TribesGame.GFxTrPage_ClanTagChange.ModifyAction")); }
			ScriptFunction CheckPricing() { mixin(MGF("mCheckPricing", "Function TribesGame.GFxTrPage_ClanTagChange.CheckPricing")); }
			ScriptFunction PopupData() { mixin(MGF("mPopupData", "Function TribesGame.GFxTrPage_ClanTagChange.PopupData")); }
			ScriptFunction PopupComplete() { mixin(MGF("mPopupComplete", "Function TribesGame.GFxTrPage_ClanTagChange.PopupComplete")); }
			ScriptFunction ShowModel() { mixin(MGF("mShowModel", "Function TribesGame.GFxTrPage_ClanTagChange.ShowModel")); }
		}
	}
	@property final auto ref
	{
		ScriptString RemovePopupTitle() { mixin(MGPC("ScriptString", 464)); }
		ScriptString ChangePopupTitle() { mixin(MGPC("ScriptString", 452)); }
		ScriptString RemovePopupBody() { mixin(MGPC("ScriptString", 440)); }
		ScriptString ChangePopupBody() { mixin(MGPC("ScriptString", 428)); }
		int RemoveItem() { mixin(MGPC("int", 424)); }
		int ChangeItem() { mixin(MGPC("int", 420)); }
		int xpPrice() { mixin(MGPC("int", 416)); }
		int gpPrice() { mixin(MGPC("int", 412)); }
		int CurrencyNum() { mixin(MGPC("int", 408)); }
		int ConfirmNum() { mixin(MGPC("int", 404)); }
		int EntryNum() { mixin(MGPC("int", 400)); }
		int PopupNum() { mixin(MGPC("int", 396)); }
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
