module UnrealScript.TribesGame.GFxTrPage_PartyMember;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_PartyMember : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_PartyMember")()); }
	private static __gshared GFxTrPage_PartyMember mDefaultProperties;
	@property final static GFxTrPage_PartyMember DefaultProperties() { mixin(MGDPC!(GFxTrPage_PartyMember, "GFxTrPage_PartyMember TribesGame.Default__GFxTrPage_PartyMember")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mTakeFocus;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mModifyAction;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_PartyMember.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_PartyMember.FillOption")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.GFxTrPage_PartyMember.TakeFocus")()); }
			ScriptFunction CheckPricing() { mixin(MGF!("mCheckPricing", "Function TribesGame.GFxTrPage_PartyMember.CheckPricing")()); }
			ScriptFunction FillPricing() { mixin(MGF!("mFillPricing", "Function TribesGame.GFxTrPage_PartyMember.FillPricing")()); }
			ScriptFunction ModifyAction() { mixin(MGF!("mModifyAction", "Function TribesGame.GFxTrPage_PartyMember.ModifyAction")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_PartyMember.ShowModel")()); }
		}
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
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
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
	GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillPricing, params.ptr, cast(void*)0);
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
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
