module UnrealScript.UTGame.UTHUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.Texture2D;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.UTGame.UTHUDBase;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.UIInteraction;
import UnrealScript.Engine.MaterialEffect;
import UnrealScript.Engine.Font;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTWeapon;

extern(C++) interface UTHUD : UTHUDBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTHUD")()); }
	private static __gshared UTHUD mDefaultProperties;
	@property final static UTHUD DefaultProperties() { mixin(MGDPC!(UTHUD, "UTHUD UTGame.Default__UTHUD")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDrawTileCentered;
			ScriptFunction mSetDisplayedOrders;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mMessage;
			ScriptFunction mResolveHUDPosition;
			ScriptFunction mGetScreenCoords;
			ScriptFunction mDrawMessageText;
			ScriptFunction mPostRender;
			ScriptFunction mDrawHUD;
			ScriptFunction mDrawGameHud;
			ScriptFunction mDrawMicIcon;
			ScriptFunction mDisplayLocalMessages;
			ScriptFunction mDrawLivingHud;
			ScriptFunction mDrawPostGameHud;
			ScriptFunction mDisplayWeaponBar;
			ScriptFunction mDisplayMap;
			ScriptFunction mDrawAIOverlays;
			ScriptFunction mGetUIController;
			ScriptFunction mStartMusic;
			ScriptFunction mGetTeamColor;
			ScriptFunction mDisplayHit;
			ScriptFunction mFlashDamage;
			ScriptFunction mUpdateDamage;
			ScriptFunction mDisplayDamage;
			ScriptFunction mDrawBackground;
			ScriptFunction mDrawBeaconBackground;
			ScriptFunction mDrawHealth;
			ScriptFunction mDrawBarGraph;
			ScriptFunction mFormatTime;
			ScriptFunction mGetFontSizeIndex;
			ScriptFunction mShowPortrait;
			ScriptFunction mHidePortrait;
			ScriptFunction mDisplayPortrait;
			ScriptFunction mDisplayHUDMessage;
			ScriptFunction mDisplayClock;
			ScriptFunction mDisplayPawnDoll;
			ScriptFunction mDisplayAmmo;
			ScriptFunction mDisplayPowerups;
			ScriptFunction mDisplayScoring;
			ScriptFunction mDisplayFragCount;
			ScriptFunction mDrawNameplateBackground;
			ScriptFunction mDisplayLeaderBoard;
			ScriptFunction mDisplayConsoleMessages;
		}
		public @property static final
		{
			ScriptFunction DrawTileCentered() { mixin(MGF!("mDrawTileCentered", "Function UTGame.UTHUD.DrawTileCentered")()); }
			ScriptFunction SetDisplayedOrders() { mixin(MGF!("mSetDisplayedOrders", "Function UTGame.UTHUD.SetDisplayedOrders")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTHUD.PostBeginPlay")()); }
			ScriptFunction Message() { mixin(MGF!("mMessage", "Function UTGame.UTHUD.Message")()); }
			ScriptFunction ResolveHUDPosition() { mixin(MGF!("mResolveHUDPosition", "Function UTGame.UTHUD.ResolveHUDPosition")()); }
			ScriptFunction GetScreenCoords() { mixin(MGF!("mGetScreenCoords", "Function UTGame.UTHUD.GetScreenCoords")()); }
			ScriptFunction DrawMessageText() { mixin(MGF!("mDrawMessageText", "Function UTGame.UTHUD.DrawMessageText")()); }
			ScriptFunction PostRender() { mixin(MGF!("mPostRender", "Function UTGame.UTHUD.PostRender")()); }
			ScriptFunction DrawHUD() { mixin(MGF!("mDrawHUD", "Function UTGame.UTHUD.DrawHUD")()); }
			ScriptFunction DrawGameHud() { mixin(MGF!("mDrawGameHud", "Function UTGame.UTHUD.DrawGameHud")()); }
			ScriptFunction DrawMicIcon() { mixin(MGF!("mDrawMicIcon", "Function UTGame.UTHUD.DrawMicIcon")()); }
			ScriptFunction DisplayLocalMessages() { mixin(MGF!("mDisplayLocalMessages", "Function UTGame.UTHUD.DisplayLocalMessages")()); }
			ScriptFunction DrawLivingHud() { mixin(MGF!("mDrawLivingHud", "Function UTGame.UTHUD.DrawLivingHud")()); }
			ScriptFunction DrawPostGameHud() { mixin(MGF!("mDrawPostGameHud", "Function UTGame.UTHUD.DrawPostGameHud")()); }
			ScriptFunction DisplayWeaponBar() { mixin(MGF!("mDisplayWeaponBar", "Function UTGame.UTHUD.DisplayWeaponBar")()); }
			ScriptFunction DisplayMap() { mixin(MGF!("mDisplayMap", "Function UTGame.UTHUD.DisplayMap")()); }
			ScriptFunction DrawAIOverlays() { mixin(MGF!("mDrawAIOverlays", "Function UTGame.UTHUD.DrawAIOverlays")()); }
			ScriptFunction GetUIController() { mixin(MGF!("mGetUIController", "Function UTGame.UTHUD.GetUIController")()); }
			ScriptFunction StartMusic() { mixin(MGF!("mStartMusic", "Function UTGame.UTHUD.StartMusic")()); }
			ScriptFunction GetTeamColor() { mixin(MGF!("mGetTeamColor", "Function UTGame.UTHUD.GetTeamColor")()); }
			ScriptFunction DisplayHit() { mixin(MGF!("mDisplayHit", "Function UTGame.UTHUD.DisplayHit")()); }
			ScriptFunction FlashDamage() { mixin(MGF!("mFlashDamage", "Function UTGame.UTHUD.FlashDamage")()); }
			ScriptFunction UpdateDamage() { mixin(MGF!("mUpdateDamage", "Function UTGame.UTHUD.UpdateDamage")()); }
			ScriptFunction DisplayDamage() { mixin(MGF!("mDisplayDamage", "Function UTGame.UTHUD.DisplayDamage")()); }
			ScriptFunction DrawBackground() { mixin(MGF!("mDrawBackground", "Function UTGame.UTHUD.DrawBackground")()); }
			ScriptFunction DrawBeaconBackground() { mixin(MGF!("mDrawBeaconBackground", "Function UTGame.UTHUD.DrawBeaconBackground")()); }
			ScriptFunction DrawHealth() { mixin(MGF!("mDrawHealth", "Function UTGame.UTHUD.DrawHealth")()); }
			ScriptFunction DrawBarGraph() { mixin(MGF!("mDrawBarGraph", "Function UTGame.UTHUD.DrawBarGraph")()); }
			ScriptFunction FormatTime() { mixin(MGF!("mFormatTime", "Function UTGame.UTHUD.FormatTime")()); }
			ScriptFunction GetFontSizeIndex() { mixin(MGF!("mGetFontSizeIndex", "Function UTGame.UTHUD.GetFontSizeIndex")()); }
			ScriptFunction ShowPortrait() { mixin(MGF!("mShowPortrait", "Function UTGame.UTHUD.ShowPortrait")()); }
			ScriptFunction HidePortrait() { mixin(MGF!("mHidePortrait", "Function UTGame.UTHUD.HidePortrait")()); }
			ScriptFunction DisplayPortrait() { mixin(MGF!("mDisplayPortrait", "Function UTGame.UTHUD.DisplayPortrait")()); }
			ScriptFunction DisplayHUDMessage() { mixin(MGF!("mDisplayHUDMessage", "Function UTGame.UTHUD.DisplayHUDMessage")()); }
			ScriptFunction DisplayClock() { mixin(MGF!("mDisplayClock", "Function UTGame.UTHUD.DisplayClock")()); }
			ScriptFunction DisplayPawnDoll() { mixin(MGF!("mDisplayPawnDoll", "Function UTGame.UTHUD.DisplayPawnDoll")()); }
			ScriptFunction DisplayAmmo() { mixin(MGF!("mDisplayAmmo", "Function UTGame.UTHUD.DisplayAmmo")()); }
			ScriptFunction DisplayPowerups() { mixin(MGF!("mDisplayPowerups", "Function UTGame.UTHUD.DisplayPowerups")()); }
			ScriptFunction DisplayScoring() { mixin(MGF!("mDisplayScoring", "Function UTGame.UTHUD.DisplayScoring")()); }
			ScriptFunction DisplayFragCount() { mixin(MGF!("mDisplayFragCount", "Function UTGame.UTHUD.DisplayFragCount")()); }
			ScriptFunction DrawNameplateBackground() { mixin(MGF!("mDrawNameplateBackground", "Function UTGame.UTHUD.DrawNameplateBackground")()); }
			ScriptFunction DisplayLeaderBoard() { mixin(MGF!("mDisplayLeaderBoard", "Function UTGame.UTHUD.DisplayLeaderBoard")()); }
			ScriptFunction DisplayConsoleMessages() { mixin(MGF!("mDisplayConsoleMessages", "Function UTGame.UTHUD.DisplayConsoleMessages")()); }
		}
	}
	struct DamageInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTHUD.DamageInfo")()); }
		@property final auto ref
		{
			MaterialInstanceConstant MatConstant() { mixin(MGPS!("MaterialInstanceConstant", 8)()); }
			float FadeValue() { mixin(MGPS!("float", 4)()); }
			float FadeTime() { mixin(MGPS!("float", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			Texture2D AltHudTexture() { mixin(MGPC!("Texture2D", 1528)()); }
			UObject.LinearColor WhiteLinearColor() { mixin(MGPC!("UObject.LinearColor", 2612)()); }
			UObject.LinearColor TeamHUDColor() { mixin(MGPC!("UObject.LinearColor", 1664)()); }
			float TX() { mixin(MGPC!("float", 2540)()); }
			float TY() { mixin(MGPC!("float", 2544)()); }
			UObject.LinearColor GoldLinearColor() { mixin(MGPC!("UObject.LinearColor", 2628)()); }
			Pawn PawnOwner() { mixin(MGPC!("Pawn", 1572)()); }
			float LastAmmoPickupTime() { mixin(MGPC!("float", 1560)()); }
			float LastArmorPickupTime() { mixin(MGPC!("float", 1568)()); }
			float MessageOffset() { mixin(MGPC!("float", 1844)()); }
			ScriptArray!(Font) HudFonts() { mixin(MGPC!("ScriptArray!(Font)", 1588)()); }
			ScriptArray!(UTHUD.DamageInfo) DamageData() { mixin(MGPC!("ScriptArray!(UTHUD.DamageInfo)", 1916)()); }
			UObject.Color BkgTexColor() { mixin(MGPC!("UObject.Color", 2680)()); }
			UIRoot.TextureCoordinates BkgTexCoords() { mixin(MGPC!("UIRoot.TextureCoordinates", 2664)()); }
			Texture2D BkgTexture() { mixin(MGPC!("Texture2D", 2660)()); }
			UObject.LinearColor SilverLinearColor() { mixin(MGPC!("UObject.LinearColor", 2644)()); }
			UObject.LinearColor DMLinearColor() { mixin(MGPC!("UObject.LinearColor", 2596)()); }
			UObject.LinearColor BlueLinearColor() { mixin(MGPC!("UObject.LinearColor", 2580)()); }
			UObject.LinearColor RedLinearColor() { mixin(MGPC!("UObject.LinearColor", 2564)()); }
			UObject.LinearColor AmmoBarColor() { mixin(MGPC!("UObject.LinearColor", 2548)()); }
			float THeight() { mixin(MGPC!("float", 2536)()); }
			float BootHeight() { mixin(MGPC!("float", 2532)()); }
			float BootWidth() { mixin(MGPC!("float", 2528)()); }
			float BootY() { mixin(MGPC!("float", 2524)()); }
			float BootX() { mixin(MGPC!("float", 2520)()); }
			float HelmetHeight() { mixin(MGPC!("float", 2516)()); }
			float HelmetWidth() { mixin(MGPC!("float", 2512)()); }
			float HelmetY() { mixin(MGPC!("float", 2508)()); }
			float HelmetX() { mixin(MGPC!("float", 2504)()); }
			float ThighHeight() { mixin(MGPC!("float", 2500)()); }
			float ThighWidth() { mixin(MGPC!("float", 2496)()); }
			float ThighY() { mixin(MGPC!("float", 2492)()); }
			float ThighX() { mixin(MGPC!("float", 2488)()); }
			float VestHeight() { mixin(MGPC!("float", 2484)()); }
			float VestWidth() { mixin(MGPC!("float", 2480)()); }
			float VestY() { mixin(MGPC!("float", 2476)()); }
			float VestX() { mixin(MGPC!("float", 2472)()); }
			float DollHeight() { mixin(MGPC!("float", 2468)()); }
			float DollWidth() { mixin(MGPC!("float", 2464)()); }
			float DollOffsetY() { mixin(MGPC!("float", 2460)()); }
			float DollOffsetX() { mixin(MGPC!("float", 2456)()); }
			UIRoot.TextureCoordinates PawnDollBGCoords() { mixin(MGPC!("UIRoot.TextureCoordinates", 2440)()); }
			ScriptString PlaceMarks() { mixin(MGPC!("ScriptString", 2392)()); }
			ScriptString YouHaveLost() { mixin(MGPC!("ScriptString", 2380)()); }
			ScriptString YouHaveWon() { mixin(MGPC!("ScriptString", 2368)()); }
			ScriptString FireToRespawnMessage() { mixin(MGPC!("ScriptString", 2356)()); }
			ScriptString DeadMessage() { mixin(MGPC!("ScriptString", 2344)()); }
			ScriptString SpectatorMessage() { mixin(MGPC!("ScriptString", 2332)()); }
			ScriptString PressFireToBegin() { mixin(MGPC!("ScriptString", 2320)()); }
			ScriptString WaitingForMatch() { mixin(MGPC!("ScriptString", 2308)()); }
			ScriptString WarmupString() { mixin(MGPC!("ScriptString", 2296)()); }
			UObject.LinearColor BlackBackgroundColor() { mixin(MGPC!("UObject.LinearColor", 2280)()); }
			UIRoot.TextureCoordinates NameplateRight() { mixin(MGPC!("UIRoot.TextureCoordinates", 2264)()); }
			UIRoot.TextureCoordinates NameplateBubble() { mixin(MGPC!("UIRoot.TextureCoordinates", 2248)()); }
			UIRoot.TextureCoordinates NameplateCenter() { mixin(MGPC!("UIRoot.TextureCoordinates", 2232)()); }
			UIRoot.TextureCoordinates NameplateLeft() { mixin(MGPC!("UIRoot.TextureCoordinates", 2216)()); }
			float NameplateBubbleWidth() { mixin(MGPC!("float", 2212)()); }
			float NameplateWidth() { mixin(MGPC!("float", 2208)()); }
			float DamageIndicatorSize() { mixin(MGPC!("float", 2204)()); }
			UObject.Vector2D VehiclePosition() { mixin(MGPC!("UObject.Vector2D", 2196)()); }
			int LastFragCount() { mixin(MGPC!("int", 2192)()); }
			float FragPulseTime() { mixin(MGPC!("float", 2188)()); }
			UObject.Vector2D ScoringPosition() { mixin(MGPC!("UObject.Vector2D", 2180)()); }
			float PowerupTransitionTime() { mixin(MGPC!("float", 2176)()); }
			float PowerupYPos() { mixin(MGPC!("float", 2172)()); }
			UObject.Vector2D PowerupDims() { mixin(MGPC!("UObject.Vector2D", 2164)()); }
			UObject.Vector2D MapPosition() { mixin(MGPC!("UObject.Vector2D", 2156)()); }
			float AmmoPulseTime() { mixin(MGPC!("float", 2152)()); }
			int LastAmmoCount() { mixin(MGPC!("int", 2148)()); }
			UTWeapon LastWeapon() { mixin(MGPC!("UTWeapon", 2144)()); }
			float AmmoTextOffsetY() { mixin(MGPC!("float", 2140)()); }
			float AmmoTextOffsetX() { mixin(MGPC!("float", 2136)()); }
			UIRoot.TextureCoordinates AmmoBGCoords() { mixin(MGPC!("UIRoot.TextureCoordinates", 2120)()); }
			float AmmoBarOffsetY() { mixin(MGPC!("float", 2116)()); }
			UObject.Vector2D AmmoPosition() { mixin(MGPC!("UObject.Vector2D", 2108)()); }
			float ArmorPulseTime() { mixin(MGPC!("float", 2104)()); }
			int LastArmorAmount() { mixin(MGPC!("int", 2100)()); }
			float ArmorTextY() { mixin(MGPC!("float", 2096)()); }
			float ArmorTextX() { mixin(MGPC!("float", 2092)()); }
			float ArmorIconY() { mixin(MGPC!("float", 2088)()); }
			float ArmorIconX() { mixin(MGPC!("float", 2084)()); }
			float ArmorBGOffsetY() { mixin(MGPC!("float", 2080)()); }
			float ArmorBGOffsetX() { mixin(MGPC!("float", 2076)()); }
			UIRoot.TextureCoordinates ArmorBGCoords() { mixin(MGPC!("UIRoot.TextureCoordinates", 2060)()); }
			float HealthPulseTime() { mixin(MGPC!("float", 2056)()); }
			int LastHealth() { mixin(MGPC!("int", 2052)()); }
			float HealthTextY() { mixin(MGPC!("float", 2048)()); }
			float HealthTextX() { mixin(MGPC!("float", 2044)()); }
			float HealthIconY() { mixin(MGPC!("float", 2040)()); }
			float HealthIconX() { mixin(MGPC!("float", 2036)()); }
			float HealthBGOffsetY() { mixin(MGPC!("float", 2032)()); }
			float HealthBGOffsetX() { mixin(MGPC!("float", 2028)()); }
			float HealthOffsetX() { mixin(MGPC!("float", 2024)()); }
			UIRoot.TextureCoordinates HealthBGCoords() { mixin(MGPC!("UIRoot.TextureCoordinates", 2008)()); }
			float DollVisibility() { mixin(MGPC!("float", 2004)()); }
			float LastDollUpdate() { mixin(MGPC!("float", 2000)()); }
			UObject.Vector2D DollPosition() { mixin(MGPC!("UObject.Vector2D", 1992)()); }
			UObject.Vector2D ClockPosition() { mixin(MGPC!("UObject.Vector2D", 1984)()); }
			MaterialInstanceConstant HitEffectMaterialInstance() { mixin(MGPC!("MaterialInstanceConstant", 1980)()); }
			MaterialEffect HitEffect() { mixin(MGPC!("MaterialEffect", 1976)()); }
			float HitEffectFadeTime() { mixin(MGPC!("float", 1972)()); }
			UObject.LinearColor MaxHitEffectColor() { mixin(MGPC!("UObject.LinearColor", 1956)()); }
			float HitEffectIntensity() { mixin(MGPC!("float", 1952)()); }
			ScriptName FadeParamName() { mixin(MGPC!("ScriptName", 1944)()); }
			ScriptName PositionalParamName() { mixin(MGPC!("ScriptName", 1936)()); }
			float FadeTime() { mixin(MGPC!("float", 1932)()); }
			Material BaseMaterial() { mixin(MGPC!("Material", 1928)()); }
			int MaxNoOfIndicators() { mixin(MGPC!("int", 1912)()); }
			float FullHeight() { mixin(MGPC!("float", 1908)()); }
			float FullWidth() { mixin(MGPC!("float", 1904)()); }
			float SafeRegionPct() { mixin(MGPC!("float", 1900)()); }
			Weapon LastSelectedWeapon() { mixin(MGPC!("Weapon", 1896)()); }
			float OrderUpdateTime() { mixin(MGPC!("float", 1892)()); }
			ScriptString DisplayedOrders() { mixin(MGPC!("ScriptString", 1880)()); }
			float MapDefaultSize() { mixin(MGPC!("float", 1876)()); }
			Texture2D MapBackground() { mixin(MGPC!("Texture2D", 1872)()); }
			float LastWeaponBarDrawnTime() { mixin(MGPC!("float", 1840)()); }
			float SelectedWeaponAmmoOffsetX() { mixin(MGPC!("float", 1836)()); }
			float WeaponAmmoOffsetY() { mixin(MGPC!("float", 1832)()); }
			float WeaponAmmoOffsetX() { mixin(MGPC!("float", 1828)()); }
			float WeaponAmmoThickness() { mixin(MGPC!("float", 1824)()); }
			float WeaponAmmoLength() { mixin(MGPC!("float", 1820)()); }
			float WeaponYOffset() { mixin(MGPC!("float", 1816)()); }
			float WeaponYScale() { mixin(MGPC!("float", 1812)()); }
			float SelectedBoxScale() { mixin(MGPC!("float", 1808)()); }
			float WeaponXOffset() { mixin(MGPC!("float", 1804)()); }
			float WeaponBarXOffset() { mixin(MGPC!("float", 1800)()); }
			float WeaponScaleSpeed() { mixin(MGPC!("float", 1796)()); }
			int BouncedWeapon() { mixin(MGPC!("int", 1792)()); }
			float LastHUDUpdateTime() { mixin(MGPC!("float", 1788)()); }
			float EmptyWeaponAlpha() { mixin(MGPC!("float", 1784)()); }
			float OffWeaponAlpha() { mixin(MGPC!("float", 1780)()); }
			float SelectedWeaponAlpha() { mixin(MGPC!("float", 1776)()); }
			float BounceWeaponScale() { mixin(MGPC!("float", 1772)()); }
			float SelectedWeaponScale() { mixin(MGPC!("float", 1768)()); }
			float CurrentWeaponScale() { mixin(MGPC!("float", 1728)()); }
			UTWeapon WeaponList() { mixin(MGPC!("UTWeapon", 1688)()); }
			float WeaponBarY() { mixin(MGPC!("float", 1684)()); }
			UObject.Color TeamTextColor() { mixin(MGPC!("UObject.Color", 1680)()); }
			float HUDScaleY() { mixin(MGPC!("float", 1660)()); }
			float HUDScaleX() { mixin(MGPC!("float", 1656)()); }
			float WeaponBoxHeight() { mixin(MGPC!("float", 1652)()); }
			float WeaponBoxWidth() { mixin(MGPC!("float", 1648)()); }
			float WeaponBarScale() { mixin(MGPC!("float", 1644)()); }
			UTPlayerReplicationInfo CharPendingPRI() { mixin(MGPC!("UTPlayerReplicationInfo", 1640)()); }
			UTPlayerReplicationInfo CharPRI() { mixin(MGPC!("UTPlayerReplicationInfo", 1636)()); }
			UObject.Vector2D CharPortraitSize() { mixin(MGPC!("UObject.Vector2D", 1628)()); }
			float CharPortraitSlideTransitionTime() { mixin(MGPC!("float", 1624)()); }
			float CharPortraitSlideTime() { mixin(MGPC!("float", 1620)()); }
			float CharPortraitTime() { mixin(MGPC!("float", 1616)()); }
			float CharPortraitXPerc() { mixin(MGPC!("float", 1612)()); }
			float CharPortraitYPerc() { mixin(MGPC!("float", 1608)()); }
			MaterialInstanceConstant CharPortraitMI() { mixin(MGPC!("MaterialInstanceConstant", 1604)()); }
			Material CharPortraitMaterial() { mixin(MGPC!("Material", 1600)()); }
			UTPlayerReplicationInfo UTOwnerPRI() { mixin(MGPC!("UTPlayerReplicationInfo", 1580)()); }
			UTPawn UTPawnOwner() { mixin(MGPC!("UTPawn", 1576)()); }
			float LastHealthPickupTime() { mixin(MGPC!("float", 1564)()); }
			UObject.Color GrayColor() { mixin(MGPC!("UObject.Color", 1556)()); }
			UObject.LinearColor LC_White() { mixin(MGPC!("UObject.LinearColor", 1540)()); }
			Texture2D UT3GHudTexture() { mixin(MGPC!("Texture2D", 1536)()); }
			Texture2D TalkingTexture() { mixin(MGPC!("Texture2D", 1532)()); }
			ScriptClass WeaponSwitchMessage() { mixin(MGPC!("ScriptClass", 1524)()); }
		}
		bool bShowVehicleArmorCount() { mixin(MGBPC!(1584, 0x40000)()); }
		bool bShowVehicleArmorCount(bool val) { mixin(MSBPC!(1584, 0x40000)()); }
		bool bIsFirstPlayer() { mixin(MGBPC!(1584, 0x80000)()); }
		bool bIsFirstPlayer(bool val) { mixin(MSBPC!(1584, 0x80000)()); }
		bool bShowVehicle() { mixin(MGBPC!(1584, 0x20000)()); }
		bool bShowVehicle(bool val) { mixin(MSBPC!(1584, 0x20000)()); }
		bool bShowLeaderboard() { mixin(MGBPC!(1584, 0x10000)()); }
		bool bShowLeaderboard(bool val) { mixin(MSBPC!(1584, 0x10000)()); }
		bool bHasLeaderboard() { mixin(MGBPC!(1584, 0x8000)()); }
		bool bHasLeaderboard(bool val) { mixin(MSBPC!(1584, 0x8000)()); }
		bool bShowFragCount() { mixin(MGBPC!(1584, 0x4000)()); }
		bool bShowFragCount(bool val) { mixin(MSBPC!(1584, 0x4000)()); }
		bool bShowScoring() { mixin(MGBPC!(1584, 0x2000)()); }
		bool bShowScoring(bool val) { mixin(MSBPC!(1584, 0x2000)()); }
		bool bDisplayingPowerups() { mixin(MGBPC!(1584, 0x1000)()); }
		bool bDisplayingPowerups(bool val) { mixin(MSBPC!(1584, 0x1000)()); }
		bool bShowPowerups() { mixin(MGBPC!(1584, 0x800)()); }
		bool bShowPowerups(bool val) { mixin(MSBPC!(1584, 0x800)()); }
		bool bShowMap() { mixin(MGBPC!(1584, 0x400)()); }
		bool bShowMap(bool val) { mixin(MSBPC!(1584, 0x400)()); }
		bool bHasMap() { mixin(MGBPC!(1584, 0x200)()); }
		bool bHasMap(bool val) { mixin(MSBPC!(1584, 0x200)()); }
		bool bShowAmmo() { mixin(MGBPC!(1584, 0x100)()); }
		bool bShowAmmo(bool val) { mixin(MSBPC!(1584, 0x100)()); }
		bool bShowDoll() { mixin(MGBPC!(1584, 0x80)()); }
		bool bShowDoll(bool val) { mixin(MSBPC!(1584, 0x80)()); }
		bool bShowClock() { mixin(MGBPC!(1584, 0x40)()); }
		bool bShowClock(bool val) { mixin(MSBPC!(1584, 0x40)()); }
		bool bFadeOutHitEffect() { mixin(MGBPC!(1584, 0x20)()); }
		bool bFadeOutHitEffect(bool val) { mixin(MSBPC!(1584, 0x20)()); }
		bool bNoWeaponNumbers() { mixin(MGBPC!(1584, 0x10)()); }
		bool bNoWeaponNumbers(bool val) { mixin(MSBPC!(1584, 0x10)()); }
		bool bOnlyShowWeaponBarIfChanging() { mixin(MGBPC!(1584, 0x8)()); }
		bool bOnlyShowWeaponBarIfChanging(bool val) { mixin(MSBPC!(1584, 0x8)()); }
		bool bShowWeaponbar() { mixin(MGBPC!(1584, 0x4)()); }
		bool bShowWeaponbar(bool val) { mixin(MSBPC!(1584, 0x4)()); }
		bool bHudMessageRendered() { mixin(MGBPC!(1584, 0x2)()); }
		bool bHudMessageRendered(bool val) { mixin(MSBPC!(1584, 0x2)()); }
		bool bShowAllAI() { mixin(MGBPC!(1584, 0x1)()); }
		bool bShowAllAI(bool val) { mixin(MSBPC!(1584, 0x1)()); }
	}
final:
	void DrawTileCentered(Texture2D Tex, float XL, float YL, float U, float V, float UL, float VL, UObject.LinearColor C)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Texture2D*)params.ptr = Tex;
		*cast(float*)&params[4] = XL;
		*cast(float*)&params[8] = YL;
		*cast(float*)&params[12] = U;
		*cast(float*)&params[16] = V;
		*cast(float*)&params[20] = UL;
		*cast(float*)&params[24] = VL;
		*cast(UObject.LinearColor*)&params[28] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTileCentered, params.ptr, cast(void*)0);
	}
	void SetDisplayedOrders(ScriptString OrderText)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OrderText;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDisplayedOrders, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Message(PlayerReplicationInfo PRI, ScriptString msg, ScriptName MsgType, float* Lifetime = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = MsgType;
		if (Lifetime !is null)
			*cast(float*)&params[24] = *Lifetime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Message, params.ptr, cast(void*)0);
	}
	UObject.Vector2D ResolveHUDPosition(UObject.Vector2D Position, float Width, float Height)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = Position;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = Height;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolveHUDPosition, params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[16];
	}
	void GetScreenCoords(float PosY, ref float ScreenX, ref float ScreenY, ref HUD.HudLocalizedMessage InMessage)
	{
		ubyte params[76];
		params[] = 0;
		*cast(float*)params.ptr = PosY;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(HUD.HudLocalizedMessage*)&params[12] = InMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScreenCoords, params.ptr, cast(void*)0);
		ScreenX = *cast(float*)&params[4];
		ScreenY = *cast(float*)&params[8];
		InMessage = *cast(HUD.HudLocalizedMessage*)&params[12];
	}
	void DrawMessageText(HUD.HudLocalizedMessage pLocalMessage, float ScreenX, float ScreenY)
	{
		ubyte params[72];
		params[] = 0;
		*cast(HUD.HudLocalizedMessage*)params.ptr = pLocalMessage;
		*cast(float*)&params[64] = ScreenX;
		*cast(float*)&params[68] = ScreenY;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMessageText, params.ptr, cast(void*)0);
	}
	void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
	void DrawHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, cast(void*)0, cast(void*)0);
	}
	void DrawGameHud()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawGameHud, cast(void*)0, cast(void*)0);
	}
	void DrawMicIcon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMicIcon, cast(void*)0, cast(void*)0);
	}
	void DisplayLocalMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayLocalMessages, cast(void*)0, cast(void*)0);
	}
	void DrawLivingHud()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawLivingHud, cast(void*)0, cast(void*)0);
	}
	void DrawPostGameHud()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawPostGameHud, cast(void*)0, cast(void*)0);
	}
	void DisplayWeaponBar()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayWeaponBar, cast(void*)0, cast(void*)0);
	}
	void DisplayMap()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayMap, cast(void*)0, cast(void*)0);
	}
	void DrawAIOverlays()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawAIOverlays, cast(void*)0, cast(void*)0);
	}
	UIInteraction GetUIController(LocalPlayer* LP = null)
	{
		ubyte params[8];
		params[] = 0;
		if (LP !is null)
			*cast(LocalPlayer*)params.ptr = *LP;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUIController, params.ptr, cast(void*)0);
		if (LP !is null)
			*LP = *cast(LocalPlayer*)params.ptr;
		return *cast(UIInteraction*)&params[4];
	}
	void StartMusic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMusic, cast(void*)0, cast(void*)0);
	}
	static void GetTeamColor(int TeamIndex, UObject.LinearColor* ImageColor = null, UObject.Color* TextColor = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		if (ImageColor !is null)
			*cast(UObject.LinearColor*)&params[4] = *ImageColor;
		if (TextColor !is null)
			*cast(UObject.Color*)&params[20] = *TextColor;
		StaticClass.ProcessEvent(Functions.GetTeamColor, params.ptr, cast(void*)0);
		if (ImageColor !is null)
			*ImageColor = *cast(UObject.LinearColor*)&params[4];
		if (TextColor !is null)
			*TextColor = *cast(UObject.Color*)&params[20];
	}
	void DisplayHit(Vector HitDir, int Damage, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayHit, params.ptr, cast(void*)0);
	}
	void FlashDamage(float FlashPosition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FlashPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlashDamage, params.ptr, cast(void*)0);
	}
	void UpdateDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDamage, cast(void*)0, cast(void*)0);
	}
	void DisplayDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDamage, cast(void*)0, cast(void*)0);
	}
	static void DrawBackground(float X, float Y, float Width, float Height, UObject.LinearColor DrawColor, Canvas DrawCanvas)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = Height;
		*cast(UObject.LinearColor*)&params[16] = DrawColor;
		*cast(Canvas*)&params[32] = DrawCanvas;
		StaticClass.ProcessEvent(Functions.DrawBackground, params.ptr, cast(void*)0);
	}
	static void DrawBeaconBackground(float X, float Y, float Width, float Height, UObject.LinearColor DrawColor, Canvas DrawCanvas)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = Height;
		*cast(UObject.LinearColor*)&params[16] = DrawColor;
		*cast(Canvas*)&params[32] = DrawCanvas;
		StaticClass.ProcessEvent(Functions.DrawBeaconBackground, params.ptr, cast(void*)0);
	}
	static void DrawHealth(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas, ubyte* Alpha = null)
	{
		ubyte params[25];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = MaxWidth;
		*cast(float*)&params[16] = Height;
		*cast(Canvas*)&params[20] = DrawCanvas;
		if (Alpha !is null)
			params[24] = *Alpha;
		StaticClass.ProcessEvent(Functions.DrawHealth, params.ptr, cast(void*)0);
	}
	static void DrawBarGraph(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas, UObject.Color BarColor, UObject.Color BackColor)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = MaxWidth;
		*cast(float*)&params[16] = Height;
		*cast(Canvas*)&params[20] = DrawCanvas;
		*cast(UObject.Color*)&params[24] = BarColor;
		*cast(UObject.Color*)&params[28] = BackColor;
		StaticClass.ProcessEvent(Functions.DrawBarGraph, params.ptr, cast(void*)0);
	}
	static ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		StaticClass.ProcessEvent(Functions.FormatTime, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static Font GetFontSizeIndex(int FontSize)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FontSize;
		StaticClass.ProcessEvent(Functions.GetFontSizeIndex, params.ptr, cast(void*)0);
		return *cast(Font*)&params[4];
	}
	void ShowPortrait(UTPlayerReplicationInfo ShowPRI, float* PortraitDuration = null, bool* bOverrideCurrentSpeaker = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = ShowPRI;
		if (PortraitDuration !is null)
			*cast(float*)&params[4] = *PortraitDuration;
		if (bOverrideCurrentSpeaker !is null)
			*cast(bool*)&params[8] = *bOverrideCurrentSpeaker;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowPortrait, params.ptr, cast(void*)0);
	}
	void HidePortrait()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HidePortrait, cast(void*)0, cast(void*)0);
	}
	void DisplayPortrait(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayPortrait, params.ptr, cast(void*)0);
	}
	void DisplayHUDMessage(ScriptString Message, float* XOffsetPct = null, float* YOffsetPct = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		if (XOffsetPct !is null)
			*cast(float*)&params[12] = *XOffsetPct;
		if (YOffsetPct !is null)
			*cast(float*)&params[16] = *YOffsetPct;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayHUDMessage, params.ptr, cast(void*)0);
	}
	void DisplayClock()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayClock, cast(void*)0, cast(void*)0);
	}
	void DisplayPawnDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayPawnDoll, cast(void*)0, cast(void*)0);
	}
	void DisplayAmmo(UTWeapon pWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = pWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayAmmo, params.ptr, cast(void*)0);
	}
	void DisplayPowerups()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayPowerups, cast(void*)0, cast(void*)0);
	}
	void DisplayScoring()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayScoring, cast(void*)0, cast(void*)0);
	}
	void DisplayFragCount(UObject.Vector2D pos)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = pos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayFragCount, params.ptr, cast(void*)0);
	}
	void DrawNameplateBackground(UObject.Vector2D pos, float WordWidth, UObject.LinearColor NameplateColor, float* WordHeight = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = pos;
		*cast(float*)&params[8] = WordWidth;
		*cast(UObject.LinearColor*)&params[12] = NameplateColor;
		if (WordHeight !is null)
			*cast(float*)&params[28] = *WordHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawNameplateBackground, params.ptr, cast(void*)0);
	}
	void DisplayLeaderBoard(UObject.Vector2D pos)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = pos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayLeaderBoard, params.ptr, cast(void*)0);
	}
	void DisplayConsoleMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayConsoleMessages, cast(void*)0, cast(void*)0);
	}
}
