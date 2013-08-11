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
	struct DamageInfo
	{
		public @property final auto ref MaterialInstanceConstant MatConstant() { return *cast(MaterialInstanceConstant*)(cast(size_t)&this + 8); }
		private ubyte __MatConstant[4];
		public @property final auto ref float FadeValue() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __FadeValue[4];
		public @property final auto ref float FadeTime() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __FadeTime[4];
	}
	public @property final auto ref Texture2D AltHudTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1528); }
	public @property final auto ref UObject.LinearColor WhiteLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2612); }
	public @property final auto ref UObject.LinearColor TeamHUDColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1664); }
	public @property final bool bShowVehicleArmorCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x40000) != 0; }
	public @property final bool bShowVehicleArmorCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x40000; } return val; }
	public @property final auto ref float TX() { return *cast(float*)(cast(size_t)cast(void*)this + 2540); }
	public @property final auto ref float TY() { return *cast(float*)(cast(size_t)cast(void*)this + 2544); }
	public @property final auto ref UObject.LinearColor GoldLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2628); }
	public @property final auto ref Pawn PawnOwner() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1572); }
	public @property final auto ref float LastAmmoPickupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref float LastArmorPickupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
	public @property final auto ref float MessageOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1844); }
	public @property final bool bIsFirstPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x80000) != 0; }
	public @property final bool bIsFirstPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x80000; } return val; }
	public @property final auto ref ScriptArray!(Font) HudFonts() { return *cast(ScriptArray!(Font)*)(cast(size_t)cast(void*)this + 1588); }
	public @property final auto ref ScriptArray!(UTHUD.DamageInfo) DamageData() { return *cast(ScriptArray!(UTHUD.DamageInfo)*)(cast(size_t)cast(void*)this + 1916); }
	public @property final auto ref UObject.Color BkgTexColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 2680); }
	public @property final auto ref UIRoot.TextureCoordinates BkgTexCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2664); }
	public @property final auto ref Texture2D BkgTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 2660); }
	public @property final auto ref UObject.LinearColor SilverLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2644); }
	public @property final auto ref UObject.LinearColor DMLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2596); }
	public @property final auto ref UObject.LinearColor BlueLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2580); }
	public @property final auto ref UObject.LinearColor RedLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2564); }
	public @property final auto ref UObject.LinearColor AmmoBarColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2548); }
	public @property final auto ref float THeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2536); }
	public @property final auto ref float BootHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2532); }
	public @property final auto ref float BootWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2528); }
	public @property final auto ref float BootY() { return *cast(float*)(cast(size_t)cast(void*)this + 2524); }
	public @property final auto ref float BootX() { return *cast(float*)(cast(size_t)cast(void*)this + 2520); }
	public @property final auto ref float HelmetHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2516); }
	public @property final auto ref float HelmetWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2512); }
	public @property final auto ref float HelmetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2508); }
	public @property final auto ref float HelmetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2504); }
	public @property final auto ref float ThighHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2500); }
	public @property final auto ref float ThighWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2496); }
	public @property final auto ref float ThighY() { return *cast(float*)(cast(size_t)cast(void*)this + 2492); }
	public @property final auto ref float ThighX() { return *cast(float*)(cast(size_t)cast(void*)this + 2488); }
	public @property final auto ref float VestHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2484); }
	public @property final auto ref float VestWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2480); }
	public @property final auto ref float VestY() { return *cast(float*)(cast(size_t)cast(void*)this + 2476); }
	public @property final auto ref float VestX() { return *cast(float*)(cast(size_t)cast(void*)this + 2472); }
	public @property final auto ref float DollHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 2468); }
	public @property final auto ref float DollWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2464); }
	public @property final auto ref float DollOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2460); }
	public @property final auto ref float DollOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2456); }
	public @property final auto ref UIRoot.TextureCoordinates PawnDollBGCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2440); }
	public @property final auto ref ScriptString PlaceMarks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2392); }
	public @property final auto ref ScriptString YouHaveLost() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2380); }
	public @property final auto ref ScriptString YouHaveWon() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2368); }
	public @property final auto ref ScriptString FireToRespawnMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2356); }
	public @property final auto ref ScriptString DeadMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2344); }
	public @property final auto ref ScriptString SpectatorMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2332); }
	public @property final auto ref ScriptString PressFireToBegin() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2320); }
	public @property final auto ref ScriptString WaitingForMatch() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2308); }
	public @property final auto ref ScriptString WarmupString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2296); }
	public @property final auto ref UObject.LinearColor BlackBackgroundColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2280); }
	public @property final auto ref UIRoot.TextureCoordinates NameplateRight() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2264); }
	public @property final auto ref UIRoot.TextureCoordinates NameplateBubble() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2248); }
	public @property final auto ref UIRoot.TextureCoordinates NameplateCenter() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2232); }
	public @property final auto ref UIRoot.TextureCoordinates NameplateLeft() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2216); }
	public @property final auto ref float NameplateBubbleWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2212); }
	public @property final auto ref float NameplateWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 2208); }
	public @property final auto ref float DamageIndicatorSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2204); }
	public @property final auto ref UObject.Vector2D VehiclePosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2196); }
	public @property final auto ref int LastFragCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2192); }
	public @property final auto ref float FragPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
	public @property final auto ref UObject.Vector2D ScoringPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2180); }
	public @property final auto ref float PowerupTransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2176); }
	public @property final auto ref float PowerupYPos() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
	public @property final auto ref UObject.Vector2D PowerupDims() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref UObject.Vector2D MapPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2156); }
	public @property final auto ref float AmmoPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
	public @property final auto ref int LastAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2148); }
	public @property final auto ref UTWeapon LastWeapon() { return *cast(UTWeapon*)(cast(size_t)cast(void*)this + 2144); }
	public @property final auto ref float AmmoTextOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2140); }
	public @property final auto ref float AmmoTextOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2136); }
	public @property final auto ref UIRoot.TextureCoordinates AmmoBGCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2120); }
	public @property final auto ref float AmmoBarOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2116); }
	public @property final auto ref UObject.Vector2D AmmoPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2108); }
	public @property final auto ref float ArmorPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2104); }
	public @property final auto ref int LastArmorAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 2100); }
	public @property final auto ref float ArmorTextY() { return *cast(float*)(cast(size_t)cast(void*)this + 2096); }
	public @property final auto ref float ArmorTextX() { return *cast(float*)(cast(size_t)cast(void*)this + 2092); }
	public @property final auto ref float ArmorIconY() { return *cast(float*)(cast(size_t)cast(void*)this + 2088); }
	public @property final auto ref float ArmorIconX() { return *cast(float*)(cast(size_t)cast(void*)this + 2084); }
	public @property final auto ref float ArmorBGOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2080); }
	public @property final auto ref float ArmorBGOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2076); }
	public @property final auto ref UIRoot.TextureCoordinates ArmorBGCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2060); }
	public @property final auto ref float HealthPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2056); }
	public @property final auto ref int LastHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 2052); }
	public @property final auto ref float HealthTextY() { return *cast(float*)(cast(size_t)cast(void*)this + 2048); }
	public @property final auto ref float HealthTextX() { return *cast(float*)(cast(size_t)cast(void*)this + 2044); }
	public @property final auto ref float HealthIconY() { return *cast(float*)(cast(size_t)cast(void*)this + 2040); }
	public @property final auto ref float HealthIconX() { return *cast(float*)(cast(size_t)cast(void*)this + 2036); }
	public @property final auto ref float HealthBGOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 2032); }
	public @property final auto ref float HealthBGOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2028); }
	public @property final auto ref float HealthOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
	public @property final auto ref UIRoot.TextureCoordinates HealthBGCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2008); }
	public @property final auto ref float DollVisibility() { return *cast(float*)(cast(size_t)cast(void*)this + 2004); }
	public @property final auto ref float LastDollUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 2000); }
	public @property final auto ref UObject.Vector2D DollPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1992); }
	public @property final auto ref UObject.Vector2D ClockPosition() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1984); }
	public @property final auto ref MaterialInstanceConstant HitEffectMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1980); }
	public @property final auto ref MaterialEffect HitEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 1976); }
	public @property final auto ref float HitEffectFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1972); }
	public @property final auto ref UObject.LinearColor MaxHitEffectColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1956); }
	public @property final auto ref float HitEffectIntensity() { return *cast(float*)(cast(size_t)cast(void*)this + 1952); }
	public @property final auto ref ScriptName FadeParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1944); }
	public @property final auto ref ScriptName PositionalParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1936); }
	public @property final auto ref float FadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1932); }
	public @property final auto ref Material BaseMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1928); }
	public @property final auto ref int MaxNoOfIndicators() { return *cast(int*)(cast(size_t)cast(void*)this + 1912); }
	public @property final auto ref float FullHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1908); }
	public @property final auto ref float FullWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 1904); }
	public @property final auto ref float SafeRegionPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1900); }
	public @property final auto ref Weapon LastSelectedWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 1896); }
	public @property final auto ref float OrderUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1892); }
	public @property final auto ref ScriptString DisplayedOrders() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1880); }
	public @property final auto ref float MapDefaultSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1876); }
	public @property final auto ref Texture2D MapBackground() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1872); }
	public @property final auto ref float LastWeaponBarDrawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1840); }
	public @property final auto ref float SelectedWeaponAmmoOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 1836); }
	public @property final auto ref float WeaponAmmoOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 1832); }
	public @property final auto ref float WeaponAmmoOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 1828); }
	public @property final auto ref float WeaponAmmoThickness() { return *cast(float*)(cast(size_t)cast(void*)this + 1824); }
	public @property final auto ref float WeaponAmmoLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1820); }
	public @property final auto ref float WeaponYOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1816); }
	public @property final auto ref float WeaponYScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1812); }
	public @property final auto ref float SelectedBoxScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1808); }
	public @property final auto ref float WeaponXOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1804); }
	public @property final auto ref float WeaponBarXOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1800); }
	public @property final auto ref float WeaponScaleSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1796); }
	public @property final auto ref int BouncedWeapon() { return *cast(int*)(cast(size_t)cast(void*)this + 1792); }
	public @property final auto ref float LastHUDUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1788); }
	public @property final auto ref float EmptyWeaponAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 1784); }
	public @property final auto ref float OffWeaponAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 1780); }
	public @property final auto ref float SelectedWeaponAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 1776); }
	public @property final auto ref float BounceWeaponScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1772); }
	public @property final auto ref float SelectedWeaponScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1768); }
	public @property final auto ref float CurrentWeaponScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
	public @property final auto ref UTWeapon WeaponList() { return *cast(UTWeapon*)(cast(size_t)cast(void*)this + 1688); }
	public @property final auto ref float WeaponBarY() { return *cast(float*)(cast(size_t)cast(void*)this + 1684); }
	public @property final auto ref UObject.Color TeamTextColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1680); }
	public @property final auto ref float HUDScaleY() { return *cast(float*)(cast(size_t)cast(void*)this + 1660); }
	public @property final auto ref float HUDScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 1656); }
	public @property final auto ref float WeaponBoxHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1652); }
	public @property final auto ref float WeaponBoxWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 1648); }
	public @property final auto ref float WeaponBarScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
	public @property final auto ref UTPlayerReplicationInfo CharPendingPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1640); }
	public @property final auto ref UTPlayerReplicationInfo CharPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1636); }
	public @property final auto ref UObject.Vector2D CharPortraitSize() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1628); }
	public @property final auto ref float CharPortraitSlideTransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1624); }
	public @property final auto ref float CharPortraitSlideTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1620); }
	public @property final auto ref float CharPortraitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1616); }
	public @property final auto ref float CharPortraitXPerc() { return *cast(float*)(cast(size_t)cast(void*)this + 1612); }
	public @property final auto ref float CharPortraitYPerc() { return *cast(float*)(cast(size_t)cast(void*)this + 1608); }
	public @property final auto ref MaterialInstanceConstant CharPortraitMI() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1604); }
	public @property final auto ref Material CharPortraitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1600); }
	public @property final bool bShowVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x20000) != 0; }
	public @property final bool bShowVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x20000; } return val; }
	public @property final bool bShowLeaderboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x10000) != 0; }
	public @property final bool bShowLeaderboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x10000; } return val; }
	public @property final bool bHasLeaderboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x8000) != 0; }
	public @property final bool bHasLeaderboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x8000; } return val; }
	public @property final bool bShowFragCount() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x4000) != 0; }
	public @property final bool bShowFragCount(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x4000; } return val; }
	public @property final bool bShowScoring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x2000) != 0; }
	public @property final bool bShowScoring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x2000; } return val; }
	public @property final bool bDisplayingPowerups() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x1000) != 0; }
	public @property final bool bDisplayingPowerups(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x1000; } return val; }
	public @property final bool bShowPowerups() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x800) != 0; }
	public @property final bool bShowPowerups(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x800; } return val; }
	public @property final bool bShowMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x400) != 0; }
	public @property final bool bShowMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x400; } return val; }
	public @property final bool bHasMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x200) != 0; }
	public @property final bool bHasMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x200; } return val; }
	public @property final bool bShowAmmo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x100) != 0; }
	public @property final bool bShowAmmo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x100; } return val; }
	public @property final bool bShowDoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x80) != 0; }
	public @property final bool bShowDoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x80; } return val; }
	public @property final bool bShowClock() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x40) != 0; }
	public @property final bool bShowClock(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x40; } return val; }
	public @property final bool bFadeOutHitEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x20) != 0; }
	public @property final bool bFadeOutHitEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x20; } return val; }
	public @property final bool bNoWeaponNumbers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x10) != 0; }
	public @property final bool bNoWeaponNumbers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x10; } return val; }
	public @property final bool bOnlyShowWeaponBarIfChanging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x8) != 0; }
	public @property final bool bOnlyShowWeaponBarIfChanging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x8; } return val; }
	public @property final bool bShowWeaponbar() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x4) != 0; }
	public @property final bool bShowWeaponbar(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x4; } return val; }
	public @property final bool bHudMessageRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x2) != 0; }
	public @property final bool bHudMessageRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x2; } return val; }
	public @property final bool bShowAllAI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1584) & 0x1) != 0; }
	public @property final bool bShowAllAI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1584) &= ~0x1; } return val; }
	public @property final auto ref UTPlayerReplicationInfo UTOwnerPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1580); }
	public @property final auto ref UTPawn UTPawnOwner() { return *cast(UTPawn*)(cast(size_t)cast(void*)this + 1576); }
	public @property final auto ref float LastHealthPickupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref UObject.Color GrayColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1556); }
	public @property final auto ref UObject.LinearColor LC_White() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref Texture2D UT3GHudTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1536); }
	public @property final auto ref Texture2D TalkingTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1532); }
	public @property final auto ref ScriptClass WeaponSwitchMessage() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1524); }
	final void DrawTileCentered(Texture2D Tex, float XL, float YL, float U, float V, float UL, float VL, UObject.LinearColor C)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45714], params.ptr, cast(void*)0);
	}
	final void SetDisplayedOrders(ScriptString OrderText)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OrderText;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45725], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45727], cast(void*)0, cast(void*)0);
	}
	final void Message(PlayerReplicationInfo PRI, ScriptString msg, ScriptName MsgType, float Lifetime)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = MsgType;
		*cast(float*)&params[24] = Lifetime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45729], params.ptr, cast(void*)0);
	}
	final UObject.Vector2D ResolveHUDPosition(UObject.Vector2D Position, float Width, float Height)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = Position;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = Height;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45737], params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[16];
	}
	final void GetScreenCoords(float PosY, float* ScreenX, float* ScreenY, HUD.HudLocalizedMessage* InMessage)
	{
		ubyte params[76];
		params[] = 0;
		*cast(float*)params.ptr = PosY;
		*cast(float*)&params[4] = *ScreenX;
		*cast(float*)&params[8] = *ScreenY;
		*cast(HUD.HudLocalizedMessage*)&params[12] = *InMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45743], params.ptr, cast(void*)0);
		*ScreenX = *cast(float*)&params[4];
		*ScreenY = *cast(float*)&params[8];
		*InMessage = *cast(HUD.HudLocalizedMessage*)&params[12];
	}
	final void DrawMessageText(HUD.HudLocalizedMessage LocalMessage, float ScreenX, float ScreenY)
	{
		ubyte params[72];
		params[] = 0;
		*cast(HUD.HudLocalizedMessage*)params.ptr = LocalMessage;
		*cast(float*)&params[64] = ScreenX;
		*cast(float*)&params[68] = ScreenY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45750], params.ptr, cast(void*)0);
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45756], cast(void*)0, cast(void*)0);
	}
	final void DrawHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45759], cast(void*)0, cast(void*)0);
	}
	final void DrawGameHud()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45770], cast(void*)0, cast(void*)0);
	}
	final void DrawMicIcon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45779], cast(void*)0, cast(void*)0);
	}
	final void DisplayLocalMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45781], cast(void*)0, cast(void*)0);
	}
	final void DrawLivingHud()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45782], cast(void*)0, cast(void*)0);
	}
	final void DrawPostGameHud()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45786], cast(void*)0, cast(void*)0);
	}
	final void DisplayWeaponBar()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45788], cast(void*)0, cast(void*)0);
	}
	final void DisplayMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45813], cast(void*)0, cast(void*)0);
	}
	final void DrawAIOverlays()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45829], cast(void*)0, cast(void*)0);
	}
	final UIInteraction GetUIController(LocalPlayer* LP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = *LP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45837], params.ptr, cast(void*)0);
		*LP = *cast(LocalPlayer*)params.ptr;
		return *cast(UIInteraction*)&params[4];
	}
	final void StartMusic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45840], cast(void*)0, cast(void*)0);
	}
	final void GetTeamColor(int TeamIndex, UObject.LinearColor* ImageColor, UObject.Color* TextColor)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(UObject.LinearColor*)&params[4] = *ImageColor;
		*cast(UObject.Color*)&params[20] = *TextColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45841], params.ptr, cast(void*)0);
		*ImageColor = *cast(UObject.LinearColor*)&params[4];
		*TextColor = *cast(UObject.Color*)&params[20];
	}
	final void DisplayHit(Vector HitDir, int Damage, ScriptClass DamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45845], params.ptr, cast(void*)0);
	}
	final void FlashDamage(float FlashPosition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FlashPosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45865], params.ptr, cast(void*)0);
	}
	final void UpdateDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45870], cast(void*)0, cast(void*)0);
	}
	final void DisplayDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45874], cast(void*)0, cast(void*)0);
	}
	final void DrawBackground(float X, float Y, float Width, float Height, UObject.LinearColor DrawColor, Canvas DrawCanvas)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = Height;
		*cast(UObject.LinearColor*)&params[16] = DrawColor;
		*cast(Canvas*)&params[32] = DrawCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45876], params.ptr, cast(void*)0);
	}
	final void DrawBeaconBackground(float X, float Y, float Width, float Height, UObject.LinearColor DrawColor, Canvas DrawCanvas)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = Height;
		*cast(UObject.LinearColor*)&params[16] = DrawColor;
		*cast(Canvas*)&params[32] = DrawCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45883], params.ptr, cast(void*)0);
	}
	final void DrawHealth(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas, ubyte Alpha)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45890], params.ptr, cast(void*)0);
	}
	final void DrawBarGraph(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas, UObject.Color BarColor, UObject.Color BackColor)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45901], params.ptr, cast(void*)0);
	}
	final ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45910], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final Font GetFontSizeIndex(int FontSize)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FontSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45916], params.ptr, cast(void*)0);
		return *cast(Font*)&params[4];
	}
	final void ShowPortrait(UTPlayerReplicationInfo ShowPRI, float PortraitDuration, bool bOverrideCurrentSpeaker)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = ShowPRI;
		*cast(float*)&params[4] = PortraitDuration;
		*cast(bool*)&params[8] = bOverrideCurrentSpeaker;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45919], params.ptr, cast(void*)0);
	}
	final void HidePortrait()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45923], cast(void*)0, cast(void*)0);
	}
	final void DisplayPortrait(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45925], params.ptr, cast(void*)0);
	}
	final void DisplayHUDMessage(ScriptString Message, float XOffsetPct, float YOffsetPct)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = XOffsetPct;
		*cast(float*)&params[16] = YOffsetPct;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45933], params.ptr, cast(void*)0);
	}
	final void DisplayClock()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45944], cast(void*)0, cast(void*)0);
	}
	final void DisplayPawnDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45947], cast(void*)0, cast(void*)0);
	}
	final void DisplayAmmo(UTWeapon Weapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = Weapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45956], params.ptr, cast(void*)0);
	}
	final void DisplayPowerups()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45963], cast(void*)0, cast(void*)0);
	}
	final void DisplayScoring()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45966], cast(void*)0, cast(void*)0);
	}
	final void DisplayFragCount(UObject.Vector2D pos)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = pos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45968], params.ptr, cast(void*)0);
	}
	final void DrawNameplateBackground(UObject.Vector2D pos, float WordWidth, UObject.LinearColor NameplateColor, float WordHeight)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = pos;
		*cast(float*)&params[8] = WordWidth;
		*cast(UObject.LinearColor*)&params[12] = NameplateColor;
		*cast(float*)&params[28] = WordHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45972], params.ptr, cast(void*)0);
	}
	final void DisplayLeaderBoard(UObject.Vector2D pos)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = pos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45979], params.ptr, cast(void*)0);
	}
	final void DisplayConsoleMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45992], cast(void*)0, cast(void*)0);
	}
}
