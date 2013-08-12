module UnrealScript.TribesGame.GFxTrPage_ClassSelect;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ClassSelect : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_ClassSelect")); }
	private static __gshared GFxTrPage_ClassSelect mDefaultProperties;
	@property final static GFxTrPage_ClassSelect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_ClassSelect)("GFxTrPage_ClassSelect TribesGame.Default__GFxTrPage_ClassSelect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mTakeFocus;
			ScriptFunction mModifyAction;
			ScriptFunction mRefreshClassList;
			ScriptFunction mFillData;
			ScriptFunction mTakeAction;
			ScriptFunction mFillOption;
			ScriptFunction mShowModel;
			ScriptFunction mRequestActiveClass;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mOnPurchaseSuccess;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mGetEquipName;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.Initialize")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.TakeFocus")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.ModifyAction")); }
			ScriptFunction RefreshClassList() { return mRefreshClassList ? mRefreshClassList : (mRefreshClassList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.RefreshClassList")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.FillData")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.TakeAction")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.FillOption")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.ShowModel")); }
			ScriptFunction RequestActiveClass() { return mRequestActiveClass ? mRequestActiveClass : (mRequestActiveClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.RequestActiveClass")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.FillPricing")); }
			ScriptFunction OnPurchaseSuccess() { return mOnPurchaseSuccess ? mOnPurchaseSuccess : (mOnPurchaseSuccess = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.OnPurchaseSuccess")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.PopupComplete")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.FillDescription")); }
			ScriptFunction GetEquipName() { return mGetEquipName ? mGetEquipName : (mGetEquipName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ClassSelect.GetEquipName")); }
		}
	}
	@property final
	{
		auto ref
		{
			int XPAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int GPAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int PurchasingClass() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int FocusedClass() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bClassDeniedPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x1) != 0; }
		bool bClassDeniedPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
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
	int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void RefreshClassList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshClassList, cast(void*)0, cast(void*)0);
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
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
	bool RequestActiveClass(int ClassId, int Loadout)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestActiveClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	void OnPurchaseSuccess()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPurchaseSuccess, cast(void*)0, cast(void*)0);
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
	ScriptString GetEquipName(int equipType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = equipType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
