module UnrealScript.TribesGame.GFxTrPage_Classes;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Classes : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Classes")); }
	private static __gshared GFxTrPage_Classes mDefaultProperties;
	@property final static GFxTrPage_Classes DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_Classes)("GFxTrPage_Classes TribesGame.Default__GFxTrPage_Classes")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mRefreshClassList;
			ScriptFunction mTakeFocus;
			ScriptFunction mShowModel;
			ScriptFunction mFillData;
			ScriptFunction mOnPurchaseSuccess;
			ScriptFunction mTakeAction;
			ScriptFunction mModifyAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mFillOption;
			ScriptFunction mCheckPurchasable;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mGetArmorName;
			ScriptFunction mGetEquipName;
			ScriptFunction mIsOwned;
			ScriptFunction mRequestActiveClass;
			ScriptFunction mHelpButton;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.Initialize")); }
			ScriptFunction RefreshClassList() { return mRefreshClassList ? mRefreshClassList : (mRefreshClassList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.RefreshClassList")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.TakeFocus")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.ShowModel")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.FillData")); }
			ScriptFunction OnPurchaseSuccess() { return mOnPurchaseSuccess ? mOnPurchaseSuccess : (mOnPurchaseSuccess = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.OnPurchaseSuccess")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.TakeAction")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.ModifyAction")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.PopupComplete")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.FillOption")); }
			ScriptFunction CheckPurchasable() { return mCheckPurchasable ? mCheckPurchasable : (mCheckPurchasable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.CheckPurchasable")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.FillPricing")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.FillDescription")); }
			ScriptFunction GetArmorName() { return mGetArmorName ? mGetArmorName : (mGetArmorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.GetArmorName")); }
			ScriptFunction GetEquipName() { return mGetEquipName ? mGetEquipName : (mGetEquipName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.GetEquipName")); }
			ScriptFunction IsOwned() { return mIsOwned ? mIsOwned : (mIsOwned = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.IsOwned")); }
			ScriptFunction RequestActiveClass() { return mRequestActiveClass ? mRequestActiveClass : (mRequestActiveClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.RequestActiveClass")); }
			ScriptFunction HelpButton() { return mHelpButton ? mHelpButton : (mHelpButton = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Classes.HelpButton")); }
		}
	}
	@property final auto ref
	{
		int XPAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
		int GPAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
		int PurchasingClass() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
		int FocusedClass() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void RefreshClassList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshClassList, cast(void*)0, cast(void*)0);
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
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	void OnPurchaseSuccess()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPurchaseSuccess, cast(void*)0, cast(void*)0);
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
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool CheckPurchasable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPurchasable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	ScriptString GetArmorName(ScriptClass FamilyInfo)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetArmorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString GetEquipName(int equipType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = equipType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool IsOwned(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsOwned, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HelpButton, params.ptr, cast(void*)0);
	}
}
