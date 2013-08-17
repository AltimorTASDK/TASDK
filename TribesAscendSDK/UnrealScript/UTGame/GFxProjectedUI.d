module UnrealScript.UTGame.GFxProjectedUI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;
import UnrealScript.UTGame.GFxUI_InventoryButton;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxProjectedUI : UTGFxTweenableMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxProjectedUI")()); }
	private static __gshared GFxProjectedUI mDefaultProperties;
	@property final static GFxProjectedUI DefaultProperties() { mixin(MGDPC!(GFxProjectedUI, "GFxProjectedUI UTGame.Default__GFxProjectedUI")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStart;
			ScriptFunction mConfigureInventory;
			ScriptFunction mAddCaptureKeys;
			ScriptFunction mStartCloseAnimation;
			ScriptFunction mOnCloseAnimComplete;
			ScriptFunction mSetupBG;
			ScriptFunction mSetupBorder;
			ScriptFunction mSetupArsenal;
			ScriptFunction mSetupBackpack;
			ScriptFunction mSetupInfo;
			ScriptFunction mPopulateBackpackFake;
			ScriptFunction mSetupArsenalButtons;
			ScriptFunction mSetupBackpackButtons;
			ScriptFunction mSwitchWeapon;
			ScriptFunction mOnFocusInSelection;
			ScriptFunction mOnFocusOutSelection;
			ScriptFunction mOnClickWeaponButton;
			ScriptFunction mOnFocusUpdateInfo;
			ScriptFunction mOnFocusArsenalTab;
			ScriptFunction mOnFocusBackpackTab;
			ScriptFunction mOnClickFakeItem;
			ScriptFunction mSetInfo;
			ScriptFunction mPopulateArsenal;
			ScriptFunction mFakeUpdateEquippedWeapon;
			ScriptFunction mUpdateEquippedWeapon;
			ScriptFunction mProcessTweenCallback;
			ScriptFunction mTweenTurbines;
			ScriptFunction mFloatSelectionUp;
			ScriptFunction mFloatSelectionDown;
			ScriptFunction mUpdatePos;
			ScriptFunction mCreateItemData;
		}
		public @property static final
		{
			ScriptFunction Start() { mixin(MGF!("mStart", "Function UTGame.GFxProjectedUI.Start")()); }
			ScriptFunction ConfigureInventory() { mixin(MGF!("mConfigureInventory", "Function UTGame.GFxProjectedUI.ConfigureInventory")()); }
			ScriptFunction AddCaptureKeys() { mixin(MGF!("mAddCaptureKeys", "Function UTGame.GFxProjectedUI.AddCaptureKeys")()); }
			ScriptFunction StartCloseAnimation() { mixin(MGF!("mStartCloseAnimation", "Function UTGame.GFxProjectedUI.StartCloseAnimation")()); }
			ScriptFunction OnCloseAnimComplete() { mixin(MGF!("mOnCloseAnimComplete", "Function UTGame.GFxProjectedUI.OnCloseAnimComplete")()); }
			ScriptFunction SetupBG() { mixin(MGF!("mSetupBG", "Function UTGame.GFxProjectedUI.SetupBG")()); }
			ScriptFunction SetupBorder() { mixin(MGF!("mSetupBorder", "Function UTGame.GFxProjectedUI.SetupBorder")()); }
			ScriptFunction SetupArsenal() { mixin(MGF!("mSetupArsenal", "Function UTGame.GFxProjectedUI.SetupArsenal")()); }
			ScriptFunction SetupBackpack() { mixin(MGF!("mSetupBackpack", "Function UTGame.GFxProjectedUI.SetupBackpack")()); }
			ScriptFunction SetupInfo() { mixin(MGF!("mSetupInfo", "Function UTGame.GFxProjectedUI.SetupInfo")()); }
			ScriptFunction PopulateBackpackFake() { mixin(MGF!("mPopulateBackpackFake", "Function UTGame.GFxProjectedUI.PopulateBackpackFake")()); }
			ScriptFunction SetupArsenalButtons() { mixin(MGF!("mSetupArsenalButtons", "Function UTGame.GFxProjectedUI.SetupArsenalButtons")()); }
			ScriptFunction SetupBackpackButtons() { mixin(MGF!("mSetupBackpackButtons", "Function UTGame.GFxProjectedUI.SetupBackpackButtons")()); }
			ScriptFunction SwitchWeapon() { mixin(MGF!("mSwitchWeapon", "Function UTGame.GFxProjectedUI.SwitchWeapon")()); }
			ScriptFunction OnFocusInSelection() { mixin(MGF!("mOnFocusInSelection", "Function UTGame.GFxProjectedUI.OnFocusInSelection")()); }
			ScriptFunction OnFocusOutSelection() { mixin(MGF!("mOnFocusOutSelection", "Function UTGame.GFxProjectedUI.OnFocusOutSelection")()); }
			ScriptFunction OnClickWeaponButton() { mixin(MGF!("mOnClickWeaponButton", "Function UTGame.GFxProjectedUI.OnClickWeaponButton")()); }
			ScriptFunction OnFocusUpdateInfo() { mixin(MGF!("mOnFocusUpdateInfo", "Function UTGame.GFxProjectedUI.OnFocusUpdateInfo")()); }
			ScriptFunction OnFocusArsenalTab() { mixin(MGF!("mOnFocusArsenalTab", "Function UTGame.GFxProjectedUI.OnFocusArsenalTab")()); }
			ScriptFunction OnFocusBackpackTab() { mixin(MGF!("mOnFocusBackpackTab", "Function UTGame.GFxProjectedUI.OnFocusBackpackTab")()); }
			ScriptFunction OnClickFakeItem() { mixin(MGF!("mOnClickFakeItem", "Function UTGame.GFxProjectedUI.OnClickFakeItem")()); }
			ScriptFunction SetInfo() { mixin(MGF!("mSetInfo", "Function UTGame.GFxProjectedUI.SetInfo")()); }
			ScriptFunction PopulateArsenal() { mixin(MGF!("mPopulateArsenal", "Function UTGame.GFxProjectedUI.PopulateArsenal")()); }
			ScriptFunction FakeUpdateEquippedWeapon() { mixin(MGF!("mFakeUpdateEquippedWeapon", "Function UTGame.GFxProjectedUI.FakeUpdateEquippedWeapon")()); }
			ScriptFunction UpdateEquippedWeapon() { mixin(MGF!("mUpdateEquippedWeapon", "Function UTGame.GFxProjectedUI.UpdateEquippedWeapon")()); }
			ScriptFunction ProcessTweenCallback() { mixin(MGF!("mProcessTweenCallback", "Function UTGame.GFxProjectedUI.ProcessTweenCallback")()); }
			ScriptFunction TweenTurbines() { mixin(MGF!("mTweenTurbines", "Function UTGame.GFxProjectedUI.TweenTurbines")()); }
			ScriptFunction FloatSelectionUp() { mixin(MGF!("mFloatSelectionUp", "Function UTGame.GFxProjectedUI.FloatSelectionUp")()); }
			ScriptFunction FloatSelectionDown() { mixin(MGF!("mFloatSelectionDown", "Function UTGame.GFxProjectedUI.FloatSelectionDown")()); }
			ScriptFunction UpdatePos() { mixin(MGF!("mUpdatePos", "Function UTGame.GFxProjectedUI.UpdatePos")()); }
			ScriptFunction CreateItemData() { mixin(MGF!("mCreateItemData", "Function UTGame.GFxProjectedUI.CreateItemData")()); }
		}
	}
	struct ItemData
	{
		private ubyte __buffer__[25];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.GFxProjectedUI.ItemData")()); }
		@property final auto ref
		{
			ubyte ItemFrame() { mixin(MGPS!("ubyte", 24)()); }
			ScriptString ItemName() { mixin(MGPS!("ScriptString", 12)()); }
			ScriptString ItemInfo() { mixin(MGPS!("ScriptString", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxUI_InventoryButton) Buttons() { mixin(MGPC!("ScriptArray!(GFxUI_InventoryButton)", 412)()); }
			ScriptArray!(GFxProjectedUI.ItemData) Items() { mixin(MGPC!("ScriptArray!(GFxProjectedUI.ItemData)", 424)()); }
			ScriptString CancelString() { mixin(MGPC!("ScriptString", 644)()); }
			ScriptString AcceptString() { mixin(MGPC!("ScriptString", 632)()); }
			Rotator StartRotation() { mixin(MGPC!("Rotator", 620)()); }
			ScriptClass WeaponClass() { mixin(MGPC!("ScriptClass", 576)()); }
			float leftThreshold() { mixin(MGPC!("float", 572)()); }
			float rightThreshold() { mixin(MGPC!("float", 568)()); }
			float rotval() { mixin(MGPC!("float", 564)()); }
			float Height() { mixin(MGPC!("float", 560)()); }
			float Width() { mixin(MGPC!("float", 556)()); }
			float Scale() { mixin(MGPC!("float", 552)()); }
			GFxObject InfoTitle() { mixin(MGPC!("GFxObject", 548)()); }
			GFxObject InfoText() { mixin(MGPC!("GFxObject", 544)()); }
			GFxObject InfoIconItem() { mixin(MGPC!("GFxObject", 540)()); }
			GFxObject InfoIconWeap() { mixin(MGPC!("GFxObject", 536)()); }
			GFxObject InfoMC() { mixin(MGPC!("GFxObject", 532)()); }
			GFxObject BG_Edge_RightBottom() { mixin(MGPC!("GFxObject", 528)()); }
			GFxObject BG_Edge_RightMiddle() { mixin(MGPC!("GFxObject", 524)()); }
			GFxObject BG_Edge_RightTop() { mixin(MGPC!("GFxObject", 520)()); }
			GFxObject BG_Edge_LeftTop() { mixin(MGPC!("GFxObject", 516)()); }
			GFxObject BG_Edge_LeftMiddle() { mixin(MGPC!("GFxObject", 512)()); }
			GFxObject BG_Edge_LeftBottom() { mixin(MGPC!("GFxObject", 508)()); }
			GFxObject BG_Optic4MC() { mixin(MGPC!("GFxObject", 504)()); }
			GFxObject BG_Optic3MC() { mixin(MGPC!("GFxObject", 500)()); }
			GFxObject BG_Optic2MC() { mixin(MGPC!("GFxObject", 496)()); }
			GFxObject BG_Optic1MC() { mixin(MGPC!("GFxObject", 492)()); }
			GFxObject BG_ArrowMC() { mixin(MGPC!("GFxObject", 488)()); }
			GFxObject BG_LineMC() { mixin(MGPC!("GFxObject", 484)()); }
			GFxObject StartUpTextMC() { mixin(MGPC!("GFxObject", 480)()); }
			GFxObject CPCLogoMC() { mixin(MGPC!("GFxObject", 476)()); }
			GFxObject BackgroundMC() { mixin(MGPC!("GFxObject", 472)()); }
			GFxObject LeftArrow01() { mixin(MGPC!("GFxObject", 468)()); }
			GFxObject LeftArrow02() { mixin(MGPC!("GFxObject", 464)()); }
			GFxObject ArsenalTabMC() { mixin(MGPC!("GFxObject", 460)()); }
			GFxObject BackpackTabMC() { mixin(MGPC!("GFxObject", 456)()); }
			GFxObject EquippedWeaponText2() { mixin(MGPC!("GFxObject", 448)()); }
			GFxObject EquippedWeaponText1() { mixin(MGPC!("GFxObject", 444)()); }
			GFxObject EquippedWeaponOutline() { mixin(MGPC!("GFxObject", 440)()); }
			GFxObject EquippedWeapon() { mixin(MGPC!("GFxObject", 436)()); }
			GFxObject ArsenalMC() { mixin(MGPC!("GFxObject", 408)()); }
			GFxObject BackpackMC() { mixin(MGPC!("GFxObject", 404)()); }
			GFxObject MainMC() { mixin(MGPC!("GFxObject", 400)()); }
			GFxObject Window() { mixin(MGPC!("GFxObject", 396)()); }
			GFxObject Root() { mixin(MGPC!("GFxObject", 392)()); }
		}
		bool bInitialized() { mixin(MGBPC!(452, 0x2)()); }
		bool bInitialized(bool val) { mixin(MSBPC!(452, 0x2)()); }
		bool bArsenalTabFocused() { mixin(MGBPC!(452, 0x1)()); }
		bool bArsenalTabFocused(bool val) { mixin(MSBPC!(452, 0x1)()); }
	}
final:
	bool Start(bool* StartPaused = null)
	{
		ubyte params[8];
		params[] = 0;
		if (StartPaused !is null)
			*cast(bool*)params.ptr = *StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConfigureInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigureInventory, cast(void*)0, cast(void*)0);
	}
	void AddCaptureKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCaptureKeys, cast(void*)0, cast(void*)0);
	}
	void StartCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartCloseAnimation, cast(void*)0, cast(void*)0);
	}
	void OnCloseAnimComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCloseAnimComplete, cast(void*)0, cast(void*)0);
	}
	void SetupBG()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupBG, cast(void*)0, cast(void*)0);
	}
	void SetupBorder()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupBorder, cast(void*)0, cast(void*)0);
	}
	void SetupArsenal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupArsenal, cast(void*)0, cast(void*)0);
	}
	void SetupBackpack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupBackpack, cast(void*)0, cast(void*)0);
	}
	void SetupInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupInfo, cast(void*)0, cast(void*)0);
	}
	void PopulateBackpackFake()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateBackpackFake, cast(void*)0, cast(void*)0);
	}
	void SetupArsenalButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupArsenalButtons, cast(void*)0, cast(void*)0);
	}
	void SetupBackpackButtons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupBackpackButtons, cast(void*)0, cast(void*)0);
	}
	void SwitchWeapon(ubyte Index)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchWeapon, params.ptr, cast(void*)0);
	}
	void OnFocusInSelection(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFocusInSelection, params.ptr, cast(void*)0);
	}
	void OnFocusOutSelection(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFocusOutSelection, params.ptr, cast(void*)0);
	}
	void OnClickWeaponButton(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClickWeaponButton, params.ptr, cast(void*)0);
	}
	void OnFocusUpdateInfo(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFocusUpdateInfo, params.ptr, cast(void*)0);
	}
	void OnFocusArsenalTab(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFocusArsenalTab, params.ptr, cast(void*)0);
	}
	void OnFocusBackpackTab(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFocusBackpackTab, params.ptr, cast(void*)0);
	}
	void OnClickFakeItem(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClickFakeItem, params.ptr, cast(void*)0);
	}
	void SetInfo(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInfo, params.ptr, cast(void*)0);
	}
	void PopulateArsenal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateArsenal, cast(void*)0, cast(void*)0);
	}
	void FakeUpdateEquippedWeapon(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.FakeUpdateEquippedWeapon, params.ptr, cast(void*)0);
	}
	void UpdateEquippedWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateEquippedWeapon, cast(void*)0, cast(void*)0);
	}
	void ProcessTweenCallback(ScriptString Callback, GFxObject TargetMC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Callback;
		*cast(GFxObject*)&params[12] = TargetMC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTweenCallback, params.ptr, cast(void*)0);
	}
	void TweenTurbines(bool Toggle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Toggle;
		(cast(ScriptObject)this).ProcessEvent(Functions.TweenTurbines, params.ptr, cast(void*)0);
	}
	void FloatSelectionUp(GFxObject ButtonIconMC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = ButtonIconMC;
		(cast(ScriptObject)this).ProcessEvent(Functions.FloatSelectionUp, params.ptr, cast(void*)0);
	}
	void FloatSelectionDown(GFxObject ButtonIconMC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = ButtonIconMC;
		(cast(ScriptObject)this).ProcessEvent(Functions.FloatSelectionDown, params.ptr, cast(void*)0);
	}
	void UpdatePos()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePos, cast(void*)0, cast(void*)0);
	}
	void CreateItemData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateItemData, cast(void*)0, cast(void*)0);
	}
}
