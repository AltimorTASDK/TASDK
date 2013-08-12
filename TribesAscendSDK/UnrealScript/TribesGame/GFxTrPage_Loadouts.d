module UnrealScript.TribesGame.GFxTrPage_Loadouts;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Loadouts : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Loadouts")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mTakeAction;
			ScriptFunction mTakeFocus;
			ScriptFunction mFillOption;
			ScriptFunction mModifyAction;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mShowModel;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mRequestActiveClass;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mGetArmorName;
			ScriptFunction mGetEquipName;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.Initialize")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.TakeAction")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.TakeFocus")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.FillOption")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.ModifyAction")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.FillPricing")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.ShowModel")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.PopupComplete")); }
			ScriptFunction RequestActiveClass() { return mRequestActiveClass ? mRequestActiveClass : (mRequestActiveClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.RequestActiveClass")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.FillDescription")); }
			ScriptFunction GetArmorName() { return mGetArmorName ? mGetArmorName : (mGetArmorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.GetArmorName")); }
			ScriptFunction GetEquipName() { return mGetEquipName ? mGetEquipName : (mGetEquipName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Loadouts.GetEquipName")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString LoadoutClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 376); }
			int ModelEquip() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int XPAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int GPAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bInSelection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x1) != 0; }
		bool bInSelection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x1; } return val; }
		bool bClassLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x2) != 0; }
		bool bClassLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x2; } return val; }
		bool bConfirmationPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x10) != 0; }
		bool bConfirmationPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x10; } return val; }
		bool bSelectionPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x8) != 0; }
		bool bSelectionPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x8; } return val; }
		bool bCurrencyPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x4) != 0; }
		bool bCurrencyPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x4; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
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
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
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
	GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillPricing, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
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
	bool RequestActiveClass(int ClassId, int Loadout)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestActiveClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
}
