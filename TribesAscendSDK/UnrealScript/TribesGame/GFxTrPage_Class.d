module UnrealScript.TribesGame.GFxTrPage_Class;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Class : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Class")); }
	private static __gshared GFxTrPage_Class mDefaultProperties;
	@property final static GFxTrPage_Class DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_Class)("GFxTrPage_Class TribesGame.Default__GFxTrPage_Class")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mSpecialAction;
			ScriptFunction mTakeAction;
			ScriptFunction mFillOption;
			ScriptFunction mGetEquipType;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mGetArmorName;
			ScriptFunction mGetEquipName;
			ScriptFunction mHelpButton;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.Initialize")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.FillData")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.SpecialAction")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.TakeAction")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.FillOption")); }
			ScriptFunction GetEquipType() { return mGetEquipType ? mGetEquipType : (mGetEquipType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.GetEquipType")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.FillDescription")); }
			ScriptFunction GetArmorName() { return mGetArmorName ? mGetArmorName : (mGetArmorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.GetArmorName")); }
			ScriptFunction GetEquipName() { return mGetEquipName ? mGetEquipName : (mGetEquipName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.GetEquipName")); }
			ScriptFunction HelpButton() { return mHelpButton ? mHelpButton : (mHelpButton = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.HelpButton")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Class.PopupComplete")); }
		}
	}
	enum MENU_ACTION_CLASS : ubyte
	{
		MAC_PRIMARY = 0,
		MAC_SECONDARY = 1,
		MAC_BELT = 2,
		MAC_PACK = 3,
		MAC_ARMOR = 4,
		MAC_PERKA = 5,
		MAC_PERKB = 6,
		MAC_SKIN = 7,
		MAC_VOICE = 8,
		MAC_MAX = 9,
	}
	@property final
	{
		auto ref
		{
			int NumRenameLoadout() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bViewingEquip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x2) != 0; }
		bool bViewingEquip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x2; } return val; }
		bool bClassLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x1) != 0; }
		bool bClassLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x1; } return val; }
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
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	int GetEquipType(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipType, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
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
	void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HelpButton, params.ptr, cast(void*)0);
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
}
