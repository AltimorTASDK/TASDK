module UnrealScript.UTGame.GFxProjectedUI;

import ScriptClasses;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;
import UnrealScript.UTGame.GFxUI_InventoryButton;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxProjectedUI : UTGFxTweenableMoviePlayer
{
public extern(D):
	struct ItemData
	{
		private ubyte __buffer__[25];
	public extern(D):
		@property final auto ref
		{
			ubyte ItemFrame() { return *cast(ubyte*)(cast(size_t)&this + 24); }
			ScriptString ItemName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString ItemInfo() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxUI_InventoryButton) Buttons() { return *cast(ScriptArray!(GFxUI_InventoryButton)*)(cast(size_t)cast(void*)this + 412); }
			ScriptArray!(GFxProjectedUI.ItemData) Items() { return *cast(ScriptArray!(GFxProjectedUI.ItemData)*)(cast(size_t)cast(void*)this + 424); }
			ScriptString CancelString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 644); }
			ScriptString AcceptString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 632); }
			Rotator StartRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 620); }
			ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 576); }
			float leftThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float rightThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float rotval() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float Scale() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			GFxObject InfoTitle() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 548); }
			GFxObject InfoText() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 544); }
			GFxObject InfoIconItem() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 540); }
			GFxObject InfoIconWeap() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 536); }
			GFxObject InfoMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 532); }
			GFxObject BG_Edge_RightBottom() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 528); }
			GFxObject BG_Edge_RightMiddle() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 524); }
			GFxObject BG_Edge_RightTop() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 520); }
			GFxObject BG_Edge_LeftTop() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 516); }
			GFxObject BG_Edge_LeftMiddle() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 512); }
			GFxObject BG_Edge_LeftBottom() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 508); }
			GFxObject BG_Optic4MC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 504); }
			GFxObject BG_Optic3MC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 500); }
			GFxObject BG_Optic2MC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 496); }
			GFxObject BG_Optic1MC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 492); }
			GFxObject BG_ArrowMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 488); }
			GFxObject BG_LineMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 484); }
			GFxObject StartUpTextMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 480); }
			GFxObject CPCLogoMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 476); }
			GFxObject BackgroundMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 472); }
			GFxObject LeftArrow01() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 468); }
			GFxObject LeftArrow02() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 464); }
			GFxObject ArsenalTabMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 460); }
			GFxObject BackpackTabMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 456); }
			GFxObject EquippedWeaponText2() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 448); }
			GFxObject EquippedWeaponText1() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 444); }
			GFxObject EquippedWeaponOutline() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 440); }
			GFxObject EquippedWeapon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 436); }
			GFxObject ArsenalMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 408); }
			GFxObject BackpackMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 404); }
			GFxObject MainMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 400); }
			GFxObject Window() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 396); }
			GFxObject Root() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 392); }
		}
		bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 452) & 0x2) != 0; }
		bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 452) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 452) &= ~0x2; } return val; }
		bool bArsenalTabFocused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 452) & 0x1) != 0; }
		bool bArsenalTabFocused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 452) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 452) &= ~0x1; } return val; }
	}
final:
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37640], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConfigureInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37643], cast(void*)0, cast(void*)0);
	}
	void AddCaptureKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37648], cast(void*)0, cast(void*)0);
	}
	void StartCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37649], cast(void*)0, cast(void*)0);
	}
	void OnCloseAnimComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37650], cast(void*)0, cast(void*)0);
	}
	void SetupBG()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37652], cast(void*)0, cast(void*)0);
	}
	void SetupBorder()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37653], cast(void*)0, cast(void*)0);
	}
	void SetupArsenal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37654], cast(void*)0, cast(void*)0);
	}
	void SetupBackpack()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37657], cast(void*)0, cast(void*)0);
	}
	void SetupInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37659], cast(void*)0, cast(void*)0);
	}
	void PopulateBackpackFake()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37660], cast(void*)0, cast(void*)0);
	}
	void SetupArsenalButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37662], cast(void*)0, cast(void*)0);
	}
	void SetupBackpackButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37664], cast(void*)0, cast(void*)0);
	}
	void SwitchWeapon(ubyte Index)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37666], params.ptr, cast(void*)0);
	}
	void OnFocusInSelection(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37668], params.ptr, cast(void*)0);
	}
	void OnFocusOutSelection(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37671], params.ptr, cast(void*)0);
	}
	void OnClickWeaponButton(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37674], params.ptr, cast(void*)0);
	}
	void OnFocusUpdateInfo(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37677], params.ptr, cast(void*)0);
	}
	void OnFocusArsenalTab(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37680], params.ptr, cast(void*)0);
	}
	void OnFocusBackpackTab(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37682], params.ptr, cast(void*)0);
	}
	void OnClickFakeItem(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37684], params.ptr, cast(void*)0);
	}
	void SetInfo(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37688], params.ptr, cast(void*)0);
	}
	void PopulateArsenal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37691], cast(void*)0, cast(void*)0);
	}
	void FakeUpdateEquippedWeapon(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37693], params.ptr, cast(void*)0);
	}
	void UpdateEquippedWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37696], cast(void*)0, cast(void*)0);
	}
	void ProcessTweenCallback(ScriptString Callback, GFxObject TargetMC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Callback;
		*cast(GFxObject*)&params[12] = TargetMC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37699], params.ptr, cast(void*)0);
	}
	void TweenTurbines(bool Toggle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Toggle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37702], params.ptr, cast(void*)0);
	}
	void FloatSelectionUp(GFxObject ButtonIconMC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = ButtonIconMC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37704], params.ptr, cast(void*)0);
	}
	void FloatSelectionDown(GFxObject ButtonIconMC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = ButtonIconMC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37706], params.ptr, cast(void*)0);
	}
	void UpdatePos()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37708], cast(void*)0, cast(void*)0);
	}
	void CreateItemData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37719], cast(void*)0, cast(void*)0);
	}
}
