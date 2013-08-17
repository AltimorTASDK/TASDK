module UnrealScript.TribesGame.GFxTrPage_Class;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Class : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_Class")()); }
	private static __gshared GFxTrPage_Class mDefaultProperties;
	@property final static GFxTrPage_Class DefaultProperties() { mixin(MGDPC!(GFxTrPage_Class, "GFxTrPage_Class TribesGame.Default__GFxTrPage_Class")()); }
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
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_Class.Initialize")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_Class.FillData")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_Class.SpecialAction")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_Class.TakeAction")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_Class.FillOption")()); }
			ScriptFunction GetEquipType() { mixin(MGF!("mGetEquipType", "Function TribesGame.GFxTrPage_Class.GetEquipType")()); }
			ScriptFunction CheckDescription() { mixin(MGF!("mCheckDescription", "Function TribesGame.GFxTrPage_Class.CheckDescription")()); }
			ScriptFunction FillDescription() { mixin(MGF!("mFillDescription", "Function TribesGame.GFxTrPage_Class.FillDescription")()); }
			ScriptFunction GetArmorName() { mixin(MGF!("mGetArmorName", "Function TribesGame.GFxTrPage_Class.GetArmorName")()); }
			ScriptFunction GetEquipName() { mixin(MGF!("mGetEquipName", "Function TribesGame.GFxTrPage_Class.GetEquipName")()); }
			ScriptFunction HelpButton() { mixin(MGF!("mHelpButton", "Function TribesGame.GFxTrPage_Class.HelpButton")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_Class.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_Class.PopupComplete")()); }
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
			int NumRenameLoadout() { mixin(MGPC!("int", 360)()); }
			int PopupNum() { mixin(MGPC!("int", 356)()); }
		}
		bool bViewingEquip() { mixin(MGBPC!(364, 0x2)()); }
		bool bViewingEquip(bool val) { mixin(MSBPC!(364, 0x2)()); }
		bool bClassLocked() { mixin(MGBPC!(364, 0x1)()); }
		bool bClassLocked(bool val) { mixin(MSBPC!(364, 0x1)()); }
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
