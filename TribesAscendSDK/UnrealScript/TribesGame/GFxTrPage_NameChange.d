module UnrealScript.TribesGame.GFxTrPage_NameChange;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage_VendorTable;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_NameChange : GFxTrPage_VendorTable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_NameChange")()); }
	private static __gshared GFxTrPage_NameChange mDefaultProperties;
	@property final static GFxTrPage_NameChange DefaultProperties() { mixin(MGDPC!(GFxTrPage_NameChange, "GFxTrPage_NameChange TribesGame.Default__GFxTrPage_NameChange")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFillDescription;
			ScriptFunction mModifyAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction FillDescription() { mixin(MGF!("mFillDescription", "Function TribesGame.GFxTrPage_NameChange.FillDescription")()); }
			ScriptFunction ModifyAction() { mixin(MGF!("mModifyAction", "Function TribesGame.GFxTrPage_NameChange.ModifyAction")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_NameChange.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_NameChange.PopupComplete")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_NameChange.ShowModel")()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptString NamePopupTitle() { mixin(MGPC!(ScriptString, 396)()); }
		bool bWaitingForNewNameInput() { mixin(MGBPC!(408, 0x1)()); }
		bool bWaitingForNewNameInput(bool val) { mixin(MSBPC!(408, 0x1)()); }
	}
final:
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
