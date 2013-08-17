module UnrealScript.TribesGame.GFxTrPage_ServerEditCallin;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerEditCallin : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_ServerEditCallin")); }
	private static __gshared GFxTrPage_ServerEditCallin mDefaultProperties;
	@property final static GFxTrPage_ServerEditCallin DefaultProperties() { mixin(MGDPC("GFxTrPage_ServerEditCallin", "GFxTrPage_ServerEditCallin TribesGame.Default__GFxTrPage_ServerEditCallin")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpecialAction;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mSetSubTitle;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mShowBoundsError;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage_ServerEditCallin.SpecialAction")); }
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage_ServerEditCallin.FillData")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_ServerEditCallin.FillOption")); }
			ScriptFunction SetSubTitle() { mixin(MGF("mSetSubTitle", "Function TribesGame.GFxTrPage_ServerEditCallin.SetSubTitle")); }
			ScriptFunction PopupData() { mixin(MGF("mPopupData", "Function TribesGame.GFxTrPage_ServerEditCallin.PopupData")); }
			ScriptFunction PopupComplete() { mixin(MGF("mPopupComplete", "Function TribesGame.GFxTrPage_ServerEditCallin.PopupComplete")); }
			ScriptFunction ShowBoundsError() { mixin(MGF("mShowBoundsError", "Function TribesGame.GFxTrPage_ServerEditCallin.ShowBoundsError")); }
			ScriptFunction CheckDescription() { mixin(MGF("mCheckDescription", "Function TribesGame.GFxTrPage_ServerEditCallin.CheckDescription")); }
			ScriptFunction FillDescription() { mixin(MGF("mFillDescription", "Function TribesGame.GFxTrPage_ServerEditCallin.FillDescription")); }
			ScriptFunction ShowModel() { mixin(MGF("mShowModel", "Function TribesGame.GFxTrPage_ServerEditCallin.ShowModel")); }
		}
	}
	@property final
	{
		auto ref
		{
			int CallinType() { mixin(MGPC("int", 376)); }
			int popupIndex() { mixin(MGPC("int", 396)); }
			int BuildupIndex() { mixin(MGPC("int", 392)); }
			int CooldownIndex() { mixin(MGPC("int", 388)); }
			int PriceIndex() { mixin(MGPC("int", 384)); }
			int EnabledIndex() { mixin(MGPC("int", 380)); }
			int ORBNumber() { mixin(MGPC("int", 372)); }
			int SUPNumber() { mixin(MGPC("int", 368)); }
			int TACNumber() { mixin(MGPC("int", 364)); }
			int MaxBOunds() { mixin(MGPC("int", 360)); }
			int MinBounds() { mixin(MGPC("int", 356)); }
		}
		bool bBoundsPopup() { mixin(MGBPC(400, 0x2)); }
		bool bBoundsPopup(bool val) { mixin(MSBPC(400, 0x2)); }
		bool bPopup() { mixin(MGBPC(400, 0x1)); }
		bool bPopup(bool val) { mixin(MSBPC(400, 0x1)); }
	}
final:
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
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
	void SetSubTitle(float val, GFxObject Obj)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = val;
		*cast(GFxObject*)&params[4] = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSubTitle, params.ptr, cast(void*)0);
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
	void ShowBoundsError(int PropId, int PropType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowBoundsError, params.ptr, cast(void*)0);
	}
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDescription, params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
