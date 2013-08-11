module UnrealScript.TribesGame.GFxTrPage;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage : GFxObject
{
public extern(D):
	enum
	{
		MENU_ELEMENT_LOGIN = 1,
		MENU_ELEMENT_OPTIONS = 2,
		MENU_ELEMENT_SIDEBAR = 3,
		MENU_ELEMENT_DESCRIPTION = 4,
		MENU_ELEMENT_UPGRADES = 5,
		MENU_ELEMENT_POPUPACQ = 6,
		MENU_ELEMENT_POPUPALERT = 7,
		MENU_ELEMENT_POPUPPURCHASE = 8,
		MENU_ELEMENT_SUMMARYPLAYER = 9,
		MENU_ELEMENT_SUMMARYTEAM = 10,
		MENU_ELEMENT_NOUSE = 11,
		MENU_ELEMENT_PRICE = 12,
		MENU_ELEMENT_PROFILE = 13,
		MENU_ELEMENT_FEATURE = 14,
		MENU_ELEMENT_SERVERBROWSER = 15,
		MAX_FRIENDS_DISPLAYED = 150,
	}
	struct ResolutionSet
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			TgPlayerProfile.PropertyPair Res() { return *cast(TgPlayerProfile.PropertyPair*)(cast(size_t)&this + 4); }
			int Index() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) OptionTitlesOverride() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 188); }
			ScriptArray!(ScriptString) OptionSubtextOverride() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 200); }
			ScriptArray!(ScriptString) OptionTitles() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 320); }
			ScriptArray!(ScriptString) OptionSubtext() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 332); }
			ScriptArray!(GFxTrAction) PageActions() { return *cast(ScriptArray!(GFxTrAction)*)(cast(size_t)cast(void*)this + 344); }
			ScriptString HelpButtonYLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 308); }
			ScriptString HelpButtonXLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 296); }
			ScriptString HelpButtonBLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 284); }
			ScriptString HelpButtonALabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 272); }
			ScriptString HelpButtonYKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 260); }
			ScriptString HelpButtonXKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
			ScriptString HelpButtonBKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
			ScriptString HelpButtonAKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
			ScriptString PageLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
			ScriptString PageLabelOverride() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
			int LoadoutEquipType() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			int LoadoutClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
			int NewAction() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			int OptionCount() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			int DataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
			int ActiveIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
			int ScrollIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
			int HelpButtonYNum() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
			int HelpButtonXNum() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			int HelpButtonBNum() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			int HelpButtonANum() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
			int GoBack() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			int ActiveLoadout() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bShowTribesLogo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x200) != 0; }
		bool bShowTribesLogo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x200; } return val; }
		bool bParentLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x100) != 0; }
		bool bParentLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x100; } return val; }
		bool bHasModifiers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x80) != 0; }
		bool bHasModifiers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x80; } return val; }
		bool bCreated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x40) != 0; }
		bool bCreated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x40; } return val; }
		bool bActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x20) != 0; }
		bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x20; } return val; }
		bool bAllowBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x10) != 0; }
		bool bAllowBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x10; } return val; }
		bool bEndOfLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8) != 0; }
		bool bEndOfLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8; } return val; }
		bool bRemoveOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4) != 0; }
		bool bRemoveOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4; } return val; }
		bool bModifyOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
		bool bModifyOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
		bool bFillingFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
		bool bFillingFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56697], cast(void*)0, cast(void*)0);
	}
	GFxTrAction AddAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56698], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)params.ptr;
	}
	GFxTrAction AddActionNumber(int ActionNumber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionNumber;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56701], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[4];
	}
	GFxTrAction AddActionString(ScriptString ActionString)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ActionString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56705], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[12];
	}
	GFxTrAction AddActionPage(GFxTrPage ActionPage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = ActionPage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56709], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[4];
	}
	GFxTrAction AddActionSet(GFxTrPage ActionPage, int ActionNumber, ScriptString ActionString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = ActionPage;
		*cast(int*)&params[4] = ActionNumber;
		*cast(ScriptString*)&params[8] = ActionString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56713], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[20];
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56719], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56724], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56730], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void ModifyFocus(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56734], params.ptr, cast(void*)0);
	}
	void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56736], params.ptr, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56741], params.ptr, cast(void*)0);
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56743], params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56745], params.ptr, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56748], params.ptr, cast(void*)0);
	}
	GFxObject FillOptions(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56752], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool IsOwned(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56758], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckPurchasable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56761], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsEquipMaxed(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56763], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56766], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	GFxObject FillDefault()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56770], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	bool CheckUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56773], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56776], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GFxObject FillUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56779], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56782], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56785], params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56789], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void FillPage(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56792], params.ptr, cast(void*)0);
	}
	void ClearActions()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56794], cast(void*)0, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56796], cast(void*)0, cast(void*)0);
	}
	GFxObject FillClass(int ClassId, int ActionIndex, bool bShowActive)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = ActionIndex;
		*cast(bool*)&params[8] = bShowActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56797], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[12];
	}
	GFxObject FillEquipTypes(int EquipId, int ActionIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(int*)&params[4] = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56844], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[8];
	}
	bool NewClassEquip(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56855], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NewClassUpgrade(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56858], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NewEquipUpgrade(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56861], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RevertSetting()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56864], cast(void*)0, cast(void*)0);
	}
	void OnPurchaseSuccess()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56865], cast(void*)0, cast(void*)0);
	}
	void ActionUp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56866], cast(void*)0, cast(void*)0);
	}
	void ActionDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56867], cast(void*)0, cast(void*)0);
	}
	void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56868], cast(void*)0, cast(void*)0);
	}
	void KeyEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56872], cast(void*)0, cast(void*)0);
	}
	void UpdateDealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56873], cast(void*)0, cast(void*)0);
	}
	void UpdateQueueTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56874], cast(void*)0, cast(void*)0);
	}
	void ProfileUp(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56875], params.ptr, cast(void*)0);
	}
	void ProfileDown(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56877], params.ptr, cast(void*)0);
	}
	void ResetRunaway()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56879], cast(void*)0, cast(void*)0);
	}
	void ShowReticule(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56881], params.ptr, cast(void*)0);
	}
	void SaveReticule(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56883], params.ptr, cast(void*)0);
	}
	void OnClose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56885], cast(void*)0, cast(void*)0);
	}
}
