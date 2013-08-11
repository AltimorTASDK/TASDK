module UnrealScript.UTGame.GFxProjectedUI;

import ScriptClasses;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;
import UnrealScript.UTGame.GFxUI_InventoryButton;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxProjectedUI : UTGFxTweenableMoviePlayer
{
	struct ItemData
	{
		public @property final auto ref ubyte ItemFrame() { return *cast(ubyte*)(cast(size_t)&this + 24); }
		private ubyte __ItemFrame[1];
		public @property final auto ref ScriptString ItemName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __ItemName[12];
		public @property final auto ref ScriptString ItemInfo() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __ItemInfo[12];
	}
	public @property final auto ref ScriptArray!(GFxUI_InventoryButton) Buttons() { return *cast(ScriptArray!(GFxUI_InventoryButton)*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref ScriptArray!(GFxProjectedUI.ItemData) Items() { return *cast(ScriptArray!(GFxProjectedUI.ItemData)*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref ScriptString CancelString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref ScriptString AcceptString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref Rotator StartRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float leftThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float rightThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref float rotval() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float Scale() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref GFxObject InfoTitle() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref GFxObject InfoText() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref GFxObject InfoIconItem() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref GFxObject InfoIconWeap() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref GFxObject InfoMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref GFxObject BG_Edge_RightBottom() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref GFxObject BG_Edge_RightMiddle() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref GFxObject BG_Edge_RightTop() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref GFxObject BG_Edge_LeftTop() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref GFxObject BG_Edge_LeftMiddle() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref GFxObject BG_Edge_LeftBottom() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref GFxObject BG_Optic4MC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref GFxObject BG_Optic3MC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref GFxObject BG_Optic2MC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref GFxObject BG_Optic1MC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref GFxObject BG_ArrowMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref GFxObject BG_LineMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref GFxObject StartUpTextMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref GFxObject CPCLogoMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref GFxObject BackgroundMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 472); }
	public @property final auto ref GFxObject LeftArrow01() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 468); }
	public @property final auto ref GFxObject LeftArrow02() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 464); }
	public @property final auto ref GFxObject ArsenalTabMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref GFxObject BackpackTabMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 456); }
	public @property final bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 452) & 0x2) != 0; }
	public @property final bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 452) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 452) &= ~0x2; } return val; }
	public @property final bool bArsenalTabFocused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 452) & 0x1) != 0; }
	public @property final bool bArsenalTabFocused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 452) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 452) &= ~0x1; } return val; }
	public @property final auto ref GFxObject EquippedWeaponText2() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 448); }
	public @property final auto ref GFxObject EquippedWeaponText1() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref GFxObject EquippedWeaponOutline() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref GFxObject EquippedWeapon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref GFxObject ArsenalMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref GFxObject BackpackMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref GFxObject MainMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref GFxObject Window() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref GFxObject Root() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 392); }
	final bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37640], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ConfigureInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37643], cast(void*)0, cast(void*)0);
	}
	final void AddCaptureKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37648], cast(void*)0, cast(void*)0);
	}
	final void StartCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37649], cast(void*)0, cast(void*)0);
	}
	final void OnCloseAnimComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37650], cast(void*)0, cast(void*)0);
	}
	final void SetupBG()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37652], cast(void*)0, cast(void*)0);
	}
	final void SetupBorder()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37653], cast(void*)0, cast(void*)0);
	}
	final void SetupArsenal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37654], cast(void*)0, cast(void*)0);
	}
	final void SetupBackpack()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37657], cast(void*)0, cast(void*)0);
	}
	final void SetupInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37659], cast(void*)0, cast(void*)0);
	}
	final void PopulateBackpackFake()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37660], cast(void*)0, cast(void*)0);
	}
	final void SetupArsenalButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37662], cast(void*)0, cast(void*)0);
	}
	final void SetupBackpackButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37664], cast(void*)0, cast(void*)0);
	}
	final void SwitchWeapon(ubyte Index)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37666], params.ptr, cast(void*)0);
	}
	final void OnFocusInSelection(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37668], params.ptr, cast(void*)0);
	}
	final void OnFocusOutSelection(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37671], params.ptr, cast(void*)0);
	}
	final void OnClickWeaponButton(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37674], params.ptr, cast(void*)0);
	}
	final void OnFocusUpdateInfo(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37677], params.ptr, cast(void*)0);
	}
	final void OnFocusArsenalTab(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37680], params.ptr, cast(void*)0);
	}
	final void OnFocusBackpackTab(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37682], params.ptr, cast(void*)0);
	}
	final void OnClickFakeItem(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37684], params.ptr, cast(void*)0);
	}
	final void SetInfo(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37688], params.ptr, cast(void*)0);
	}
	final void PopulateArsenal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37691], cast(void*)0, cast(void*)0);
	}
	final void FakeUpdateEquippedWeapon(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37693], params.ptr, cast(void*)0);
	}
	final void UpdateEquippedWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37696], cast(void*)0, cast(void*)0);
	}
	final void ProcessTweenCallback(ScriptString Callback, GFxObject TargetMC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Callback;
		*cast(GFxObject*)&params[12] = TargetMC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37699], params.ptr, cast(void*)0);
	}
	final void TweenTurbines(bool Toggle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Toggle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37702], params.ptr, cast(void*)0);
	}
	final void FloatSelectionUp(GFxObject ButtonIconMC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = ButtonIconMC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37704], params.ptr, cast(void*)0);
	}
	final void FloatSelectionDown(GFxObject ButtonIconMC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = ButtonIconMC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37706], params.ptr, cast(void*)0);
	}
	final void UpdatePos()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37708], cast(void*)0, cast(void*)0);
	}
	final void CreateItemData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37719], cast(void*)0, cast(void*)0);
	}
}
