module UnrealScript.TribesGame.GFxTrPage;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage : GFxObject
{
	public static immutable auto MENU_ELEMENT_LOGIN = 1;
	public static immutable auto MENU_ELEMENT_OPTIONS = 2;
	public static immutable auto MENU_ELEMENT_SIDEBAR = 3;
	public static immutable auto MENU_ELEMENT_DESCRIPTION = 4;
	public static immutable auto MENU_ELEMENT_UPGRADES = 5;
	public static immutable auto MENU_ELEMENT_POPUPACQ = 6;
	public static immutable auto MENU_ELEMENT_POPUPALERT = 7;
	public static immutable auto MENU_ELEMENT_POPUPPURCHASE = 8;
	public static immutable auto MENU_ELEMENT_SUMMARYPLAYER = 9;
	public static immutable auto MENU_ELEMENT_SUMMARYTEAM = 10;
	public static immutable auto MENU_ELEMENT_NOUSE = 11;
	public static immutable auto MENU_ELEMENT_PRICE = 12;
	public static immutable auto MENU_ELEMENT_PROFILE = 13;
	public static immutable auto MENU_ELEMENT_FEATURE = 14;
	public static immutable auto MENU_ELEMENT_SERVERBROWSER = 15;
	public static immutable auto MAX_FRIENDS_DISPLAYED = 150;
	struct ResolutionSet
	{
		public @property final auto ref TgPlayerProfile.PropertyPair Res() { return *cast(TgPlayerProfile.PropertyPair*)(cast(size_t)&this + 4); }
		private ubyte __Res[8];
		public @property final auto ref int Index() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Index[4];
	}
	public @property final auto ref ScriptArray!(ScriptString) OptionTitlesOverride() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptArray!(ScriptString) OptionSubtextOverride() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref ScriptArray!(ScriptString) OptionTitles() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref ScriptArray!(ScriptString) OptionSubtext() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref ScriptArray!(GFxTrAction) PageActions() { return *cast(ScriptArray!(GFxTrAction)*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref ScriptString HelpButtonYLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref ScriptString HelpButtonXLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref ScriptString HelpButtonBLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref ScriptString HelpButtonALabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref ScriptString HelpButtonYKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptString HelpButtonXKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref ScriptString HelpButtonBKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref ScriptString HelpButtonAKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref ScriptString PageLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptString PageLabelOverride() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final bool bShowTribesLogo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x200) != 0; }
	public @property final bool bShowTribesLogo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x200; } return val; }
	public @property final bool bParentLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x100) != 0; }
	public @property final bool bParentLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x100; } return val; }
	public @property final bool bHasModifiers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x80) != 0; }
	public @property final bool bHasModifiers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x80; } return val; }
	public @property final bool bCreated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x40) != 0; }
	public @property final bool bCreated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x40; } return val; }
	public @property final bool bActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x20) != 0; }
	public @property final bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x20; } return val; }
	public @property final bool bAllowBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x10) != 0; }
	public @property final bool bAllowBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x10; } return val; }
	public @property final bool bEndOfLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8) != 0; }
	public @property final bool bEndOfLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8; } return val; }
	public @property final bool bRemoveOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4) != 0; }
	public @property final bool bRemoveOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4; } return val; }
	public @property final bool bModifyOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
	public @property final bool bModifyOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
	public @property final bool bFillingFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
	public @property final bool bFillingFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	public @property final auto ref int LoadoutEquipType() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int LoadoutClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int NewAction() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int OptionCount() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int DataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref int ActiveIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref int ScrollIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int HelpButtonYNum() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int HelpButtonXNum() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref int HelpButtonBNum() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref int HelpButtonANum() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref int GoBack() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int ActiveLoadout() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56697], cast(void*)0, cast(void*)0);
	}
	final GFxTrAction AddAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56698], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)params.ptr;
	}
	final GFxTrAction AddActionNumber(int ActionNumber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionNumber;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56701], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[4];
	}
	final GFxTrAction AddActionString(ScriptString ActionString)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ActionString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56705], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[12];
	}
	final GFxTrAction AddActionPage(GFxTrPage ActionPage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = ActionPage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56709], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[4];
	}
	final GFxTrAction AddActionSet(GFxTrPage ActionPage, int ActionNumber, ScriptString ActionString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(GFxTrPage*)params.ptr = ActionPage;
		*cast(int*)&params[4] = ActionNumber;
		*cast(ScriptString*)&params[8] = ActionString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56713], params.ptr, cast(void*)0);
		return *cast(GFxTrAction*)&params[20];
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56719], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56724], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56730], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void ModifyFocus(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56734], params.ptr, cast(void*)0);
	}
	final void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56736], params.ptr, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56741], params.ptr, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56743], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56745], params.ptr, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56748], params.ptr, cast(void*)0);
	}
	final GFxObject FillOptions(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56752], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final bool IsOwned(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56758], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckPurchasable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56761], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsEquipMaxed(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56763], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56766], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final GFxObject FillDefault()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56770], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	final bool CheckUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56773], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56776], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56779], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56782], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56785], params.ptr, cast(void*)0);
	}
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56789], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void FillPage(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56792], params.ptr, cast(void*)0);
	}
	final void ClearActions()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56794], cast(void*)0, cast(void*)0);
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56796], cast(void*)0, cast(void*)0);
	}
	final GFxObject FillClass(int ClassId, int ActionIndex, bool bShowActive)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = ActionIndex;
		*cast(bool*)&params[8] = bShowActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56797], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[12];
	}
	final GFxObject FillEquipTypes(int EquipId, int ActionIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(int*)&params[4] = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56844], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[8];
	}
	final bool NewClassEquip(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56855], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NewClassUpgrade(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56858], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NewEquipUpgrade(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56861], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void RevertSetting()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56864], cast(void*)0, cast(void*)0);
	}
	final void OnPurchaseSuccess()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56865], cast(void*)0, cast(void*)0);
	}
	final void ActionUp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56866], cast(void*)0, cast(void*)0);
	}
	final void ActionDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56867], cast(void*)0, cast(void*)0);
	}
	final void RefreshButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56868], cast(void*)0, cast(void*)0);
	}
	final void KeyEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56872], cast(void*)0, cast(void*)0);
	}
	final void UpdateDealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56873], cast(void*)0, cast(void*)0);
	}
	final void UpdateQueueTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56874], cast(void*)0, cast(void*)0);
	}
	final void ProfileUp(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56875], params.ptr, cast(void*)0);
	}
	final void ProfileDown(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56877], params.ptr, cast(void*)0);
	}
	final void ResetRunaway()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56879], cast(void*)0, cast(void*)0);
	}
	final void ShowReticule(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56881], params.ptr, cast(void*)0);
	}
	final void SaveReticule(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56883], params.ptr, cast(void*)0);
	}
	final void OnClose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56885], cast(void*)0, cast(void*)0);
	}
}
