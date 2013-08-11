module UnrealScript.UTGame.UTWeapon;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.Texture2D;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.Canvas;
import UnrealScript.UDKBase.UDKWeapon;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Weapon;

extern(C++) interface UTWeapon : UDKWeapon
{
	enum EZoomState : ubyte
	{
		ZST_NotZoomed = 0,
		ZST_ZoomingOut = 1,
		ZST_ZoomingIn = 2,
		ZST_Zoomed = 3,
		ZST_MAX = 4,
	}
	enum AmmoWidgetDisplayStyle : ubyte
	{
		EAWDS_Numeric = 0,
		EAWDS_BarGraph = 1,
		EAWDS_Both = 2,
		EAWDS_None = 3,
		EAWDS_MAX = 4,
	}
	public @property final auto ref UTWeapon.AmmoWidgetDisplayStyle AmmoDisplayType() { return *cast(UTWeapon.AmmoWidgetDisplayStyle*)(cast(size_t)cast(void*)this + 970); }
	public @property final auto ref ubyte InventoryGroup() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 969); }
	public @property final auto ref ScriptString UseHintString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1460); }
	public @property final bool bExportMenuData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x1) != 0; }
	public @property final bool bExportMenuData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x1; } return val; }
	public @property final bool bAllowFiringWithoutController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x40000) != 0; }
	public @property final bool bAllowFiringWithoutController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x40000; } return val; }
	public @property final bool bSmallWeapons() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x8) != 0; }
	public @property final bool bSmallWeapons(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x8; } return val; }
	public @property final bool bUseCustomCoordinates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x4) != 0; }
	public @property final bool bUseCustomCoordinates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x4; } return val; }
	public @property final auto ref UIRoot.TextureCoordinates SimpleCrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref UIRoot.TextureCoordinates CustomCrosshairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref float LastHitEnemyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref float InventoryWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1012); }
	public @property final auto ref float GroupWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1008); }
	public @property final auto ref UIRoot.TextureCoordinates CrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref float CrosshairScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
	public @property final auto ref Texture2D CrosshairImage() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 884); }
	public @property final auto ref UObject.Color CrosshairColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 928); }
	public @property final bool bWasLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x2) != 0; }
	public @property final bool bWasLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x2; } return val; }
	public @property final auto ref float LockedStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 920); }
	public @property final auto ref float CurrentLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref float StartLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref float LockedScaleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref float FinalLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref UIRoot.TextureCoordinates LockedCrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref float ZoomedRate() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
	public @property final auto ref float ZoomedTargetFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 972); }
	public @property final auto ref AnimSet ArmsAnimSet() { return *cast(AnimSet*)(cast(size_t)cast(void*)this + 1040); }
	public @property final auto ref ScriptArray!(ScriptName) WeaponFireAnim() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1016); }
	public @property final auto ref ScriptArray!(ScriptName) ArmFireAnim() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1028); }
	public @property final auto ref ScriptArray!(CameraAnim) FireCameraAnim() { return *cast(ScriptArray!(CameraAnim)*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref ForceFeedbackWaveform WeaponFireWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 800); }
	public @property final bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x40) != 0; }
	public @property final bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x40; } return val; }
	public @property final auto ref ScriptArray!(SoundCue) WeaponFireSnd() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 1100); }
	public @property final bool bMuzzleFlashPSCLoops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x400) != 0; }
	public @property final bool bMuzzleFlashPSCLoops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x400; } return val; }
	public @property final auto ref ScriptClass MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1224); }
	public @property final auto ref ScriptName MuzzleFlashSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1196); }
	public @property final bool bShowAltMuzzlePSCWhenWeaponHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x200) != 0; }
	public @property final bool bShowAltMuzzlePSCWhenWeaponHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x200; } return val; }
	public @property final auto ref ParticleSystem MuzzleFlashAltPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1212); }
	public @property final bool bMuzzleFlashAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x800) != 0; }
	public @property final bool bMuzzleFlashAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x800; } return val; }
	public @property final auto ref ParticleSystem MuzzleFlashPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1208); }
	public @property final auto ref float MuzzleFlashDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref ScriptName WeaponPutDownAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1044); }
	public @property final auto ref ScriptName ArmsPutDownAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1052); }
	public @property final auto ref SoundCue WeaponPutDownSnd() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref ScriptName WeaponEquipAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1060); }
	public @property final auto ref ScriptName ArmsEquipAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1068); }
	public @property final auto ref SoundCue WeaponEquipSnd() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1116); }
	public @property final bool bPendingShow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x100) != 0; }
	public @property final bool bPendingShow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x100; } return val; }
	public @property final auto ref ScriptClass AttachmentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 992); }
	public @property final auto ref UObject.Color MuzzleFlashColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1216); }
	public @property final bool bForceHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x200000) != 0; }
	public @property final bool bForceHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x200000; } return val; }
	public @property final auto ref Vector HiddenWeaponsOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1272); }
	public @property final auto ref Vector PlayerViewOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1232); }
	public @property final auto ref Vector SmallWeaponsOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1244); }
	public @property final auto ref float WideScreenOffsetScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1256); }
	public @property final auto ref float BobDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 1120); }
	public @property final auto ref float JumpDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 1124); }
	public @property final auto ref Rotator LastRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1140); }
	public @property final auto ref float MaxYawLag() { return *cast(float*)(cast(size_t)cast(void*)this + 1132); }
	public @property final auto ref float MaxPitchLag() { return *cast(float*)(cast(size_t)cast(void*)this + 1128); }
	public @property final auto ref float LastRotUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 1136); }
	public @property final auto ref Rotator WidescreenRotationOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1260); }
	public @property final auto ref int OldRotDiff() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
	public @property final auto ref float OldLeadMag() { return *cast(float*)(cast(size_t)cast(void*)this + 1152); }
	public @property final auto ref float OldMaxDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 1168); }
	public @property final auto ref float RotChgSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1176); }
	public @property final auto ref float ReturnChgSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1180); }
	public @property final auto ref float CurrentRating() { return *cast(float*)(cast(size_t)cast(void*)this + 1312); }
	public @property final auto ref ScriptClass AmmoPickupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref int MaxAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 760); }
	public @property final bool bSplashJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x1000) != 0; }
	public @property final bool bSplashJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x1000; } return val; }
	public @property final auto ref ScriptArray!(ubyte) bZoomedFireMode() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref ScriptArray!(int) ShotCost() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 764); }
	public @property final bool bUsingAimingHelp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x20000) != 0; }
	public @property final bool bUsingAimingHelp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x20000; } return val; }
	public @property final auto ref float AimingHelpRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
	public @property final auto ref ubyte ZoomedFireModeNum() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 968); }
	public @property final auto ref SoundCue ZoomInSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 984); }
	public @property final auto ref SoundCue ZoomOutSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref float SwitchAbortTime() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref ScriptArray!(float) MinReloadPct() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref float ProjectileSpawnOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1284); }
	public @property final auto ref ScriptArray!(ScriptName) EffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref float WeaponCanvasXPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1188); }
	public @property final auto ref float WeaponCanvasYPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
	public @property final auto ref UIRoot.TextureCoordinates IconCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 836); }
	public @property final bool bSuperWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x10) != 0; }
	public @property final bool bSuperWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x10; } return val; }
	public @property final bool bNeverForwardPendingFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x20) != 0; }
	public @property final bool bNeverForwardPendingFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x20; } return val; }
	public @property final bool bUsesOffhand() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x80) != 0; }
	public @property final bool bUsesOffhand(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x80; } return val; }
	public @property final bool bRecommendSplashDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x2000) != 0; }
	public @property final bool bRecommendSplashDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x2000; } return val; }
	public @property final bool bSniping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x4000) != 0; }
	public @property final bool bSniping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x4000; } return val; }
	public @property final bool bFastRepeater() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x8000) != 0; }
	public @property final bool bFastRepeater(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x8000; } return val; }
	public @property final bool bLockedAimWhileFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x10000) != 0; }
	public @property final bool bLockedAimWhileFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x10000; } return val; }
	public @property final bool bTargetFrictionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x80000) != 0; }
	public @property final bool bTargetFrictionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x80000; } return val; }
	public @property final bool bTargetAdhesionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x100000) != 0; }
	public @property final bool bTargetAdhesionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x100000; } return val; }
	public @property final bool bHasLocationSpeech() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x400000) != 0; }
	public @property final bool bHasLocationSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x400000; } return val; }
	public @property final auto ref int LockerAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref int IconX() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref int IconY() { return *cast(int*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref int IconWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref int IconHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref float DroppedPickupOffsetZ() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
	public @property final auto ref float ZoomFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 980); }
	public @property final auto ref Vector PivotTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 996); }
	public @property final auto ref ScriptArray!(ScriptName) WeaponIdleAnims() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref ScriptArray!(ScriptName) ArmIdleAnims() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref UObject.Color WeaponColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1184); }
	public @property final auto ref Rotator LockerRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1288); }
	public @property final auto ref Vector LockerOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1300); }
	public @property final auto ref float aimerror() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
	public @property final auto ref UDKPlayerController.ObjectiveAnnouncementInfo NeedToPickUpAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 1320); }
	public @property final auto ref float ZoomedTurnSpeedScalePct() { return *cast(float*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref float TargetFrictionDistanceMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref float TargetFrictionDistancePeak() { return *cast(float*)(cast(size_t)cast(void*)this + 1352); }
	public @property final auto ref float TargetFrictionDistanceMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1356); }
	public @property final auto ref UObject.InterpCurveFloat TargetFrictionDistanceCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 1360); }
	public @property final auto ref UObject.Vector2D TargetFrictionMultiplierRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1376); }
	public @property final auto ref float TargetFrictionPeakRadiusScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref float TargetFrictionPeakHeightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
	public @property final auto ref Vector TargetFrictionOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref float TargetFrictionZoomedBoostValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref float TargetAdhesionTimeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref float TargetAdhesionDistanceMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1412); }
	public @property final auto ref float TargetAdhesionAimDistY() { return *cast(float*)(cast(size_t)cast(void*)this + 1416); }
	public @property final auto ref float TargetAdhesionAimDistZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
	public @property final auto ref UObject.Vector2D TargetAdhesionScaleRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1424); }
	public @property final auto ref float TargetAdhesionScaleAmountMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1432); }
	public @property final auto ref float TargetAdhesionTargetVelocityMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1436); }
	public @property final auto ref float TargetAdhesionPlayerVelocityMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1440); }
	public @property final auto ref float TargetAdhesionZoomedBoostValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1444); }
	public @property final auto ref ScriptArray!(SoundNodeWave) LocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1448); }
	final int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37500], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool CoversScreenSpace(Vector ScreenLoc, Canvas pCanvas)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = ScreenLoc;
		*cast(Canvas*)&params[12] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39644], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final float GetPowerPerc()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40297], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float DesireAmmo(bool bDetour)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDetour;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40504], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void ServerStartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40692], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40695], cast(void*)0, cast(void*)0);
	}
	final void AdjustWeaponTimingForConsole()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40702], cast(void*)0, cast(void*)0);
	}
	final void CreateOverlayMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40704], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40709], params.ptr, cast(void*)0);
	}
	final void CalcInventoryWeight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40712], cast(void*)0, cast(void*)0);
	}
	final bool ShouldSwitchTo(UTWeapon InWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40715], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40718], params.ptr, cast(void*)0);
	}
	final void ActiveRenderOverlays(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40722], params.ptr, cast(void*)0);
	}
	final void DrawWeaponCrosshair(HUD pHUD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40726], params.ptr, cast(void*)0);
	}
	final void DrawLockedOn(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40742], params.ptr, cast(void*)0);
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40758], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40767], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void PlayArmAnimation(ScriptName Sequence, float fDesiredDuration, bool OffHand, bool bLoop, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelMesh)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Sequence;
		*cast(float*)&params[8] = fDesiredDuration;
		*cast(bool*)&params[12] = OffHand;
		*cast(bool*)&params[16] = bLoop;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[20] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40770], params.ptr, cast(void*)0);
	}
	final void PlayWeaponAnimation(ScriptName Sequence, float fDesiredDuration, bool bLoop, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelMesh)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Sequence;
		*cast(float*)&params[8] = fDesiredDuration;
		*cast(bool*)&params[12] = bLoop;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[16] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40781], params.ptr, cast(void*)0);
	}
	final void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40786], params.ptr, cast(void*)0);
	}
	final void StopFireEffects(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40791], params.ptr, cast(void*)0);
	}
	final void ShakeView()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40793], cast(void*)0, cast(void*)0);
	}
	final void WeaponCalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40797], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
	}
	final void WeaponPlaySound(SoundCue Sound, float NoiseLoudness, bool bStopWhenOwnerDestroyed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40801], params.ptr, cast(void*)0);
	}
	final void PlayFiringSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40806], cast(void*)0, cast(void*)0);
	}
	final void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40808], cast(void*)0, cast(void*)0);
	}
	final void CauseMuzzleFlashLight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40811], cast(void*)0, cast(void*)0);
	}
	final void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40815], cast(void*)0, cast(void*)0);
	}
	final void StopMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40823], cast(void*)0, cast(void*)0);
	}
	final void TimeWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40824], cast(void*)0, cast(void*)0);
	}
	final void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40825], cast(void*)0, cast(void*)0);
	}
	final void TimeWeaponEquipping()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40829], cast(void*)0, cast(void*)0);
	}
	final float GetEquipTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40830], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40833], cast(void*)0, cast(void*)0);
	}
	final void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40837], params.ptr, cast(void*)0);
	}
	final void SetMuzzleFlashParams(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40845], params.ptr, cast(void*)0);
	}
	final void AttachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40848], cast(void*)0, cast(void*)0);
	}
	final void DetachWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40850], cast(void*)0, cast(void*)0);
	}
	final void DetachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40852], cast(void*)0, cast(void*)0);
	}
	final void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40854], params.ptr, cast(void*)0);
	}
	final void PerformWeaponChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40859], cast(void*)0, cast(void*)0);
	}
	final void GetViewAxes(Vector* XAxis, Vector* YAxis, Vector* ZAxis)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = *XAxis;
		*cast(Vector*)&params[12] = *YAxis;
		*cast(Vector*)&params[24] = *ZAxis;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40860], params.ptr, cast(void*)0);
		*XAxis = *cast(Vector*)params.ptr;
		*YAxis = *cast(Vector*)&params[12];
		*ZAxis = *cast(Vector*)&params[24];
	}
	final void ServerReselectWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40864], cast(void*)0, cast(void*)0);
	}
	final bool CanThrow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40865], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final UTPlayerController.EWeaponHand GetHand()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40867], params.ptr, cast(void*)0);
		return *cast(UTPlayerController.EWeaponHand*)params.ptr;
	}
	final void SetPosition(UDKPawn Holder, float DeltaSeconds)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKPawn*)params.ptr = Holder;
		*cast(float*)&params[4] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40870], params.ptr, cast(void*)0);
	}
	final bool ShouldLagRot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40901], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int LagRot(int NewValue, int LastValue, float MaxDiff, int Index, float DeltaSeconds)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = NewValue;
		*cast(int*)&params[4] = LastValue;
		*cast(float*)&params[8] = MaxDiff;
		*cast(int*)&params[12] = Index;
		*cast(float*)&params[16] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40903], params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	final void AdjustPlayerDamage(int* Damage, Controller InstigatedBy, Vector HitLocation, Vector* Momentum, ScriptClass DamageType)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = *Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = *Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40918], params.ptr, cast(void*)0);
		*Damage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[20];
	}
	final float RelativeStrengthVersus(Pawn P, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40924], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float GetWeaponRating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40928], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40933], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40948], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final bool AmmoMaxed(int Mode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40960], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float GetDamageRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40964], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool CanHeal(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40967], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float GetOptimalRangeFor(Actor Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40970], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final bool FireOnRelease()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40973], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool FocusOnLeader(bool bLeaderFiring)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bLeaderFiring;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40975], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool RecommendRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40978], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float SuggestAttackStyle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40980], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float SuggestDefenseStyle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40982], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40984], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool SplashJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40986], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ShouldFireWithoutTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40989], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ubyte BestMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40991], params.ptr, cast(void*)0);
		return params[0];
	}
	final bool IsFullyCharged()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40995], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ReadyToFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40997], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool StillFiring(ubyte FireMode)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41000], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41005], params.ptr, cast(void*)0);
	}
	final int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41008], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41013], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41017], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool NeedAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41020], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void Loaded(bool bUseWeaponMax)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUseWeaponMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41022], params.ptr, cast(void*)0);
	}
	final bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41024], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void WeaponEmpty()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41029], cast(void*)0, cast(void*)0);
	}
	final bool bReadyToFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41030], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Vector InstantFireStartTrace()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41032], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final Vector InstantFireEndTrace(Vector StartTrace)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41034], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41037], cast(void*)0, cast(void*)0);
	}
	final Actor.ImpactInfo InstantAimHelp(Vector StartTrace, Vector EndTrace, Actor.ImpactInfo RealImpact)
	{
		ubyte params[184];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(Actor.ImpactInfo*)&params[24] = RealImpact;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41047], params.ptr, cast(void*)0);
		return *cast(Actor.ImpactInfo*)&params[104];
	}
	final Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41059], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	final void ProcessInstantHit(ubyte FiringMode, Actor.ImpactInfo Impact, int NumHits)
	{
		ubyte params[85];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(int*)&params[84] = NumHits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41063], params.ptr, cast(void*)0);
	}
	final UTWeapon.EZoomState GetZoomedState()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41070], params.ptr, cast(void*)0);
		return *cast(UTWeapon.EZoomState*)params.ptr;
	}
	final bool CheckZoom(ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41073], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void StartZoom(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41078], params.ptr, cast(void*)0);
	}
	final void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41081], params.ptr, cast(void*)0);
	}
	final void ClientEndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41085], params.ptr, cast(void*)0);
	}
	final void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41087], params.ptr, cast(void*)0);
	}
	final void SendToFiringState(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41090], params.ptr, cast(void*)0);
	}
	final void ClientWeaponSet(bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41092], params.ptr, cast(void*)0);
	}
	final void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41096], cast(void*)0, cast(void*)0);
	}
	final void PreloadTextures(bool bForcePreload)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForcePreload;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41126], params.ptr, cast(void*)0);
	}
	final bool AllowSwitchTo(Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41128], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool TryPutDown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41131], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void FiringPutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41136], cast(void*)0, cast(void*)0);
	}
	final Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41137], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final Vector GetEffectLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41152], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final void RefireCheckTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41156], cast(void*)0, cast(void*)0);
	}
	final void SetupArmsAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41157], cast(void*)0, cast(void*)0);
	}
	final AnimNodeSequence GetArmAnimNodeSeq()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41168], params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)params.ptr;
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41171], cast(void*)0, cast(void*)0);
	}
	final void SetWeaponOverlayFlags(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41189], params.ptr, cast(void*)0);
	}
	final float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41196], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41206], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ThrottleLook(float* aTurn, float* aLookUp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *aTurn;
		*cast(float*)&params[4] = *aLookUp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41208], params.ptr, cast(void*)0);
		*aTurn = *cast(float*)params.ptr;
		*aLookUp = *cast(float*)&params[4];
	}
	final void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41211], cast(void*)0, cast(void*)0);
	}
	final void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41212], params.ptr, cast(void*)0);
	}
	final void ClientWeaponThrown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41215], cast(void*)0, cast(void*)0);
	}
	final bool CanViewAccelerationWhenFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41216], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41218], cast(void*)0, cast(void*)0);
	}
	final void HolderExitedVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41219], cast(void*)0, cast(void*)0);
	}
	final void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(float*)&params[12] = HUDScaleX;
		*cast(float*)&params[16] = HUDScaleY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41224], params.ptr, cast(void*)0);
	}
	final bool EnableFriendlyWarningCrosshair()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41232], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
