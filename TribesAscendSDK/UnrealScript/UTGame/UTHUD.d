module UnrealScript.UTGame.UTHUD;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTHUD")); }
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
			ScriptFunction DrawTileCentered() { return mDrawTileCentered ? mDrawTileCentered : (mDrawTileCentered = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawTileCentered")); }
			ScriptFunction SetDisplayedOrders() { return mSetDisplayedOrders ? mSetDisplayedOrders : (mSetDisplayedOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.SetDisplayedOrders")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.PostBeginPlay")); }
			ScriptFunction Message() { return mMessage ? mMessage : (mMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.Message")); }
			ScriptFunction ResolveHUDPosition() { return mResolveHUDPosition ? mResolveHUDPosition : (mResolveHUDPosition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.ResolveHUDPosition")); }
			ScriptFunction GetScreenCoords() { return mGetScreenCoords ? mGetScreenCoords : (mGetScreenCoords = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.GetScreenCoords")); }
			ScriptFunction DrawMessageText() { return mDrawMessageText ? mDrawMessageText : (mDrawMessageText = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawMessageText")); }
			ScriptFunction PostRender() { return mPostRender ? mPostRender : (mPostRender = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.PostRender")); }
			ScriptFunction DrawHUD() { return mDrawHUD ? mDrawHUD : (mDrawHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawHUD")); }
			ScriptFunction DrawGameHud() { return mDrawGameHud ? mDrawGameHud : (mDrawGameHud = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawGameHud")); }
			ScriptFunction DrawMicIcon() { return mDrawMicIcon ? mDrawMicIcon : (mDrawMicIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawMicIcon")); }
			ScriptFunction DisplayLocalMessages() { return mDisplayLocalMessages ? mDisplayLocalMessages : (mDisplayLocalMessages = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayLocalMessages")); }
			ScriptFunction DrawLivingHud() { return mDrawLivingHud ? mDrawLivingHud : (mDrawLivingHud = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawLivingHud")); }
			ScriptFunction DrawPostGameHud() { return mDrawPostGameHud ? mDrawPostGameHud : (mDrawPostGameHud = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawPostGameHud")); }
			ScriptFunction DisplayWeaponBar() { return mDisplayWeaponBar ? mDisplayWeaponBar : (mDisplayWeaponBar = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayWeaponBar")); }
			ScriptFunction DisplayMap() { return mDisplayMap ? mDisplayMap : (mDisplayMap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayMap")); }
			ScriptFunction DrawAIOverlays() { return mDrawAIOverlays ? mDrawAIOverlays : (mDrawAIOverlays = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawAIOverlays")); }
			ScriptFunction GetUIController() { return mGetUIController ? mGetUIController : (mGetUIController = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.GetUIController")); }
			ScriptFunction StartMusic() { return mStartMusic ? mStartMusic : (mStartMusic = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.StartMusic")); }
			ScriptFunction GetTeamColor() { return mGetTeamColor ? mGetTeamColor : (mGetTeamColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.GetTeamColor")); }
			ScriptFunction DisplayHit() { return mDisplayHit ? mDisplayHit : (mDisplayHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayHit")); }
			ScriptFunction FlashDamage() { return mFlashDamage ? mFlashDamage : (mFlashDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.FlashDamage")); }
			ScriptFunction UpdateDamage() { return mUpdateDamage ? mUpdateDamage : (mUpdateDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.UpdateDamage")); }
			ScriptFunction DisplayDamage() { return mDisplayDamage ? mDisplayDamage : (mDisplayDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayDamage")); }
			ScriptFunction DrawBackground() { return mDrawBackground ? mDrawBackground : (mDrawBackground = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawBackground")); }
			ScriptFunction DrawBeaconBackground() { return mDrawBeaconBackground ? mDrawBeaconBackground : (mDrawBeaconBackground = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawBeaconBackground")); }
			ScriptFunction DrawHealth() { return mDrawHealth ? mDrawHealth : (mDrawHealth = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawHealth")); }
			ScriptFunction DrawBarGraph() { return mDrawBarGraph ? mDrawBarGraph : (mDrawBarGraph = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawBarGraph")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.FormatTime")); }
			ScriptFunction GetFontSizeIndex() { return mGetFontSizeIndex ? mGetFontSizeIndex : (mGetFontSizeIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.GetFontSizeIndex")); }
			ScriptFunction ShowPortrait() { return mShowPortrait ? mShowPortrait : (mShowPortrait = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.ShowPortrait")); }
			ScriptFunction HidePortrait() { return mHidePortrait ? mHidePortrait : (mHidePortrait = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.HidePortrait")); }
			ScriptFunction DisplayPortrait() { return mDisplayPortrait ? mDisplayPortrait : (mDisplayPortrait = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayPortrait")); }
			ScriptFunction DisplayHUDMessage() { return mDisplayHUDMessage ? mDisplayHUDMessage : (mDisplayHUDMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayHUDMessage")); }
			ScriptFunction DisplayClock() { return mDisplayClock ? mDisplayClock : (mDisplayClock = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayClock")); }
			ScriptFunction DisplayPawnDoll() { return mDisplayPawnDoll ? mDisplayPawnDoll : (mDisplayPawnDoll = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayPawnDoll")); }
			ScriptFunction DisplayAmmo() { return mDisplayAmmo ? mDisplayAmmo : (mDisplayAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayAmmo")); }
			ScriptFunction DisplayPowerups() { return mDisplayPowerups ? mDisplayPowerups : (mDisplayPowerups = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayPowerups")); }
			ScriptFunction DisplayScoring() { return mDisplayScoring ? mDisplayScoring : (mDisplayScoring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayScoring")); }
			ScriptFunction DisplayFragCount() { return mDisplayFragCount ? mDisplayFragCount : (mDisplayFragCount = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayFragCount")); }
			ScriptFunction DrawNameplateBackground() { return mDrawNameplateBackground ? mDrawNameplateBackground : (mDrawNameplateBackground = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DrawNameplateBackground")); }
			ScriptFunction DisplayLeaderBoard() { return mDisplayLeaderBoard ? mDisplayLeaderBoard : (mDisplayLeaderBoard = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayLeaderBoard")); }
			ScriptFunction DisplayConsoleMessages() { return mDisplayConsoleMessages ? mDisplayConsoleMessages : (mDisplayConsoleMessages = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHUD.DisplayConsoleMessages")); }
		}
	}
	struct DamageInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTHUD.DamageInfo")); }
		@property final auto ref
		{
			MaterialInstanceConstant MatConstant() { return *cast(MaterialInstanceConstant*)(cast(size_t)&this + 8); }
			float FadeValue() { return *cast(float*)(cast(size_t)&this + 4); }
			float FadeTime() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			Texture2D AltHudTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1528); }
			UObject.LinearColor WhiteLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2612); }
			UObject.LinearColor TeamHUDColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1664); }
			float TX() { return *cast(float*)(cast(size_t)cast(void*)this + 2540); }
			float TY() { return *cast(float*)(cast(size_t)cast(void*)this + 2544); }
			UObject.LinearColor GoldLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2628); }
			Pawn PawnOwner() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1572); }
			float LastAmmoPickupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
			float LastArmorPickupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
			float MessageOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1844); }
			ScriptArray!(Font) HudFonts() { return *cast(ScriptArray!(Font)*)(cast(size_t)cast(void*)this + 1588); }
			ScriptArray!(UTHUD.DamageInfo) DamageData() { return *cast(ScriptArray!(UTHUD.DamageInfo)*)(cast(size_t)cast(void*)this + 1916); }
			UObject.Color BkgTexColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 2680); }
			UIRoot.TextureCoordinates BkgTexCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2664); }
			Texture2D BkgTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 2660); }
			UObject.LinearColor SilverLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2644); }
			UObject.LinearColor DMLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2596); }
			UObject.LinearColor BlueLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2580); }
			UObject.LinearColor RedLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2564); }
			UObject.LinearColor AmmoBarColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2548); }
			float THeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2536); }
			float BootHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2532); }
			float BootWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2528); }
			float BootY() { return *cast(float*)(cast(size_t)cast(void*)this + 2524); }
			float BootX() { return *cast(float*)(cast(size_t)cast(void*)this + 2520); }
			float HelmetHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2516); }
			float HelmetWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2512); }
			float HelmetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2508); }
			float HelmetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2504); }
			float ThighHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2500); }
			float ThighWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2496); }
			float ThighY() { return *cast(float*)(cast(size_t)cast(void*)this + 2492); }
			float ThighX() { return *cast(float*)(cast(size_t)cast(void*)this + 2488); }
			float VestHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2484); }
			float VestWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2480); }
			float VestY() { return *cast(float*)(cast(size_t)cast(void*)this + 2476); }
			float VestX() { return *cast(float*)(cast(size_t)cast(void*)this + 2472); }
			float DollHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2468); }
			float DollWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2464); }
			float DollOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2460); }
			float DollOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2456); }
			UIRoot.TextureCoordinates PawnDollBGCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2440); }
			ScriptString PlaceMarks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2392); }
			ScriptString YouHaveLost() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2380); }
			ScriptString YouHaveWon() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2368); }
			ScriptString FireToRespawnMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2356); }
			ScriptString DeadMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2344); }
			ScriptString SpectatorMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2332); }
			ScriptString PressFireToBegin() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2320); }
			ScriptString WaitingForMatch() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2308); }
			ScriptString WarmupString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2296); }
			UObject.LinearColor BlackBackgroundColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2280); }
			UIRoot.TextureCoordinates NameplateRight() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2264); }
			UIRoot.TextureCoordinates NameplateBubble() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2248); }
			UIRoot.TextureCoordinates NameplateCenter() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2232); }
			UIRoot.TextureCoordinates NameplateLeft() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2216); }
			float NameplateBubbleWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2212); }
			float NameplateWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2208); }
			float DamageIndicatorSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2204); }
			UObject.Vector2D VehiclePosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2196); }
			int LastFragCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2192); }
			float FragPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
			UObject.Vector2D ScoringPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2180); }
			float PowerupTransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2176); }
			float PowerupYPos() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
			UObject.Vector2D PowerupDims() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2164); }
			UObject.Vector2D MapPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2156); }
			float AmmoPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
			int LastAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2148); }
			UTWeapon LastWeapon() { return *cast(UTWeapon*)(cast(size_t)cast(void*)this + 2144); }
			float AmmoTextOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2140); }
			float AmmoTextOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2136); }
			UIRoot.TextureCoordinates AmmoBGCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2120); }
			float AmmoBarOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2116); }
			UObject.Vector2D AmmoPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2108); }
			float ArmorPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2104); }
			int LastArmorAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 2100); }
			float ArmorTextY() { return *cast(float*)(cast(size_t)cast(void*)this + 2096); }
			float ArmorTextX() { return *cast(float*)(cast(size_t)cast(void*)this + 2092); }
			float ArmorIconY() { return *cast(float*)(cast(size_t)cast(void*)this + 2088); }
			float ArmorIconX() { return *cast(float*)(cast(size_t)cast(void*)this + 2084); }
			float ArmorBGOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2080); }
			float ArmorBGOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2076); }
			UIRoot.TextureCoordinates ArmorBGCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2060); }
			float HealthPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2056); }
			int LastHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 2052); }
			float HealthTextY() { return *cast(float*)(cast(size_t)cast(void*)this + 2048); }
			float HealthTextX() { return *cast(float*)(cast(size_t)cast(void*)this + 2044); }
			float HealthIconY() { return *cast(float*)(cast(size_t)cast(void*)this + 2040); }
			float HealthIconX() { return *cast(float*)(cast(size_t)cast(void*)this + 2036); }
			float HealthBGOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2032); }
			float HealthBGOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2028); }
			float HealthOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
			UIRoot.TextureCoordinates HealthBGCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2008); }
			float DollVisibility() { return *cast(float*)(cast(size_t)cast(void*)this + 2004); }
			float LastDollUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 2000); }
			UObject.Vector2D DollPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1992); }
			UObject.Vector2D ClockPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1984); }
			MaterialInstanceConstant HitEffectMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1980); }
			MaterialEffect HitEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 1976); }
			float HitEffectFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1972); }
			UObject.LinearColor MaxHitEffectColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1956); }
			float HitEffectIntensity() { return *cast(float*)(cast(size_t)cast(void*)this + 1952); }
			ScriptName FadeParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1944); }
			ScriptName PositionalParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1936); }
			float FadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1932); }
			Material BaseMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1928); }
			int MaxNoOfIndicators() { return *cast(int*)(cast(size_t)cast(void*)this + 1912); }
			float FullHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1908); }
			float FullWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 1904); }
			float SafeRegionPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1900); }
			Weapon LastSelectedWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 1896); }
			float OrderUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1892); }
			ScriptString DisplayedOrders() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1880); }
			float MapDefaultSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1876); }
			Texture2D MapBackground() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1872); }
			float LastWeaponBarDrawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1840); }
			float SelectedWeaponAmmoOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 1836); }
			float WeaponAmmoOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 1832); }
			float WeaponAmmoOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 1828); }
			float WeaponAmmoThickness() { return *cast(float*)(cast(size_t)cast(void*)this + 1824); }
			float WeaponAmmoLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1820); }
			float WeaponYOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1816); }
			float WeaponYScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1812); }
			float SelectedBoxScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1808); }
			float WeaponXOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1804); }
			float WeaponBarXOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1800); }
			float WeaponScaleSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1796); }
			int BouncedWeapon() { return *cast(int*)(cast(size_t)cast(void*)this + 1792); }
			float LastHUDUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1788); }
			float EmptyWeaponAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 1784); }
			float OffWeaponAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 1780); }
			float SelectedWeaponAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 1776); }
			float BounceWeaponScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1772); }
			float SelectedWeaponScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1768); }
			float CurrentWeaponScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
			UTWeapon WeaponList() { return *cast(UTWeapon*)(cast(size_t)cast(void*)this + 1688); }
			float WeaponBarY() { return *cast(float*)(cast(size_t)cast(void*)this + 1684); }
			UObject.Color TeamTextColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1680); }
			float HUDScaleY() { return *cast(float*)(cast(size_t)cast(void*)this + 1660); }
			float HUDScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 1656); }
			float WeaponBoxHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1652); }
			float WeaponBoxWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 1648); }
			float WeaponBarScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
			UTPlayerReplicationInfo CharPendingPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1640); }
			UTPlayerReplicationInfo CharPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1636); }
			UObject.Vector2D CharPortraitSize() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1628); }
			float CharPortraitSlideTransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1624); }
			float CharPortraitSlideTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1620); }
			float CharPortraitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1616); }
			float CharPortraitXPerc() { return *cast(float*)(cast(size_t)cast(void*)this + 1612); }
			float CharPortraitYPerc() { return *cast(float*)(cast(size_t)cast(void*)this + 1608); }
			MaterialInstanceConstant CharPortraitMI() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1604); }
			Material CharPortraitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1600); }
			UTPlayerReplicationInfo UTOwnerPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1580); }
			UTPawn UTPawnOwner() { return *cast(UTPawn*)(cast(size_t)cast(void*)this + 1576); }
			float LastHealthPickupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
			UObject.Color GrayColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1556); }
			UObject.LinearColor LC_White() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1540); }
			Texture2D UT3GHudTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1536); }
			Texture2D TalkingTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1532); }
			ScriptClass WeaponSwitchMessage() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1524); }
		}
		bool bShowVehicleArmorCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x40000) != 0; }
		bool bShowVehicleArmorCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x40000; } return val; }
		bool bIsFirstPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x80000) != 0; }
		bool bIsFirstPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x80000; } return val; }
		bool bShowVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x20000) != 0; }
		bool bShowVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x20000; } return val; }
		bool bShowLeaderboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x10000) != 0; }
		bool bShowLeaderboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x10000; } return val; }
		bool bHasLeaderboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x8000) != 0; }
		bool bHasLeaderboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x8000; } return val; }
		bool bShowFragCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x4000) != 0; }
		bool bShowFragCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x4000; } return val; }
		bool bShowScoring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x2000) != 0; }
		bool bShowScoring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x2000; } return val; }
		bool bDisplayingPowerups() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x1000) != 0; }
		bool bDisplayingPowerups(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x1000; } return val; }
		bool bShowPowerups() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x800) != 0; }
		bool bShowPowerups(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x800; } return val; }
		bool bShowMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x400) != 0; }
		bool bShowMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x400; } return val; }
		bool bHasMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x200) != 0; }
		bool bHasMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x200; } return val; }
		bool bShowAmmo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x100) != 0; }
		bool bShowAmmo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x100; } return val; }
		bool bShowDoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x80) != 0; }
		bool bShowDoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x80; } return val; }
		bool bShowClock() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x40) != 0; }
		bool bShowClock(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x40; } return val; }
		bool bFadeOutHitEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x20) != 0; }
		bool bFadeOutHitEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x20; } return val; }
		bool bNoWeaponNumbers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x10) != 0; }
		bool bNoWeaponNumbers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x10; } return val; }
		bool bOnlyShowWeaponBarIfChanging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x8) != 0; }
		bool bOnlyShowWeaponBarIfChanging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x8; } return val; }
		bool bShowWeaponbar() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x4) != 0; }
		bool bShowWeaponbar(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x4; } return val; }
		bool bHudMessageRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x2) != 0; }
		bool bHudMessageRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x2; } return val; }
		bool bShowAllAI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x1) != 0; }
		bool bShowAllAI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x1; } return val; }
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
	void Message(PlayerReplicationInfo PRI, ScriptString msg, ScriptName MsgType, float Lifetime)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = MsgType;
		*cast(float*)&params[24] = Lifetime;
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
	void GetScreenCoords(float PosY, float* ScreenX, float* ScreenY, HUD.HudLocalizedMessage* InMessage)
	{
		ubyte params[76];
		params[] = 0;
		*cast(float*)params.ptr = PosY;
		*cast(float*)&params[4] = *ScreenX;
		*cast(float*)&params[8] = *ScreenY;
		*cast(HUD.HudLocalizedMessage*)&params[12] = *InMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScreenCoords, params.ptr, cast(void*)0);
		*ScreenX = *cast(float*)&params[4];
		*ScreenY = *cast(float*)&params[8];
		*InMessage = *cast(HUD.HudLocalizedMessage*)&params[12];
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
	UIInteraction GetUIController(LocalPlayer* LP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = *LP;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUIController, params.ptr, cast(void*)0);
		*LP = *cast(LocalPlayer*)params.ptr;
		return *cast(UIInteraction*)&params[4];
	}
	void StartMusic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMusic, cast(void*)0, cast(void*)0);
	}
	static void GetTeamColor(int TeamIndex, UObject.LinearColor* ImageColor, UObject.Color* TextColor)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(UObject.LinearColor*)&params[4] = *ImageColor;
		*cast(UObject.Color*)&params[20] = *TextColor;
		StaticClass.ProcessEvent(Functions.GetTeamColor, params.ptr, cast(void*)0);
		*ImageColor = *cast(UObject.LinearColor*)&params[4];
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
	static void DrawHealth(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas, ubyte Alpha)
	{
		ubyte params[25];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = MaxWidth;
		*cast(float*)&params[16] = Height;
		*cast(Canvas*)&params[20] = DrawCanvas;
		params[24] = Alpha;
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
	void ShowPortrait(UTPlayerReplicationInfo ShowPRI, float PortraitDuration, bool bOverrideCurrentSpeaker)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = ShowPRI;
		*cast(float*)&params[4] = PortraitDuration;
		*cast(bool*)&params[8] = bOverrideCurrentSpeaker;
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
	void DisplayHUDMessage(ScriptString Message, float XOffsetPct, float YOffsetPct)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = XOffsetPct;
		*cast(float*)&params[16] = YOffsetPct;
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
	void DrawNameplateBackground(UObject.Vector2D pos, float WordWidth, UObject.LinearColor NameplateColor, float WordHeight)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = pos;
		*cast(float*)&params[8] = WordWidth;
		*cast(UObject.LinearColor*)&params[12] = NameplateColor;
		*cast(float*)&params[28] = WordHeight;
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
