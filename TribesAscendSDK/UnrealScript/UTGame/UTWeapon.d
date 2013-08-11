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
public extern(D):
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
	@property final
	{
		auto ref
		{
			UTWeapon.AmmoWidgetDisplayStyle AmmoDisplayType() { return *cast(UTWeapon.AmmoWidgetDisplayStyle*)(cast(size_t)cast(void*)this + 970); }
			ubyte InventoryGroup() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 969); }
			ScriptString UseHintString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1460); }
			UIRoot.TextureCoordinates SimpleCrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 868); }
			UIRoot.TextureCoordinates CustomCrosshairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 936); }
			float LastHitEnemyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
			float InventoryWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1012); }
			float GroupWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1008); }
			UIRoot.TextureCoordinates CrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 852); }
			float CrosshairScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
			Texture2D CrosshairImage() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 884); }
			UObject.Color CrosshairColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 928); }
			float LockedStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 920); }
			float CurrentLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
			float StartLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 908); }
			float LockedScaleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
			float FinalLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
			UIRoot.TextureCoordinates LockedCrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 888); }
			float ZoomedRate() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
			float ZoomedTargetFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 972); }
			AnimSet ArmsAnimSet() { return *cast(AnimSet*)(cast(size_t)cast(void*)this + 1040); }
			ScriptArray!(ScriptName) WeaponFireAnim() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1016); }
			ScriptArray!(ScriptName) ArmFireAnim() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1028); }
			ScriptArray!(CameraAnim) FireCameraAnim() { return *cast(ScriptArray!(CameraAnim)*)(cast(size_t)cast(void*)this + 788); }
			ForceFeedbackWaveform WeaponFireWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 800); }
			ScriptArray!(SoundCue) WeaponFireSnd() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 1100); }
			ScriptClass MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1224); }
			ScriptName MuzzleFlashSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1196); }
			ParticleSystem MuzzleFlashAltPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1212); }
			ParticleSystem MuzzleFlashPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1208); }
			float MuzzleFlashDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
			ScriptName WeaponPutDownAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1044); }
			ScriptName ArmsPutDownAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1052); }
			SoundCue WeaponPutDownSnd() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1112); }
			ScriptName WeaponEquipAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1060); }
			ScriptName ArmsEquipAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1068); }
			SoundCue WeaponEquipSnd() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1116); }
			ScriptClass AttachmentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 992); }
			UObject.Color MuzzleFlashColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1216); }
			Vector HiddenWeaponsOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1272); }
			Vector PlayerViewOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1232); }
			Vector SmallWeaponsOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1244); }
			float WideScreenOffsetScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1256); }
			float BobDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 1120); }
			float JumpDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 1124); }
			Rotator LastRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1140); }
			float MaxYawLag() { return *cast(float*)(cast(size_t)cast(void*)this + 1132); }
			float MaxPitchLag() { return *cast(float*)(cast(size_t)cast(void*)this + 1128); }
			float LastRotUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 1136); }
			Rotator WidescreenRotationOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1260); }
			int OldRotDiff() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
			float OldLeadMag() { return *cast(float*)(cast(size_t)cast(void*)this + 1152); }
			float OldMaxDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 1168); }
			float RotChgSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1176); }
			float ReturnChgSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1180); }
			float CurrentRating() { return *cast(float*)(cast(size_t)cast(void*)this + 1312); }
			ScriptClass AmmoPickupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 752); }
			int MaxAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 760); }
			ScriptArray!(ubyte) bZoomedFireMode() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 956); }
			ScriptArray!(int) ShotCost() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 764); }
			float AimingHelpRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
			ubyte ZoomedFireModeNum() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 968); }
			SoundCue ZoomInSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 984); }
			SoundCue ZoomOutSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 988); }
			float SwitchAbortTime() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			ScriptArray!(float) MinReloadPct() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 776); }
			float ProjectileSpawnOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1284); }
			ScriptArray!(ScriptName) EffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 804); }
			float WeaponCanvasXPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1188); }
			float WeaponCanvasYPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
			UIRoot.TextureCoordinates IconCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 836); }
			int LockerAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 756); }
			int IconX() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
			int IconY() { return *cast(int*)(cast(size_t)cast(void*)this + 820); }
			int IconWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 824); }
			int IconHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 828); }
			float DroppedPickupOffsetZ() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
			float ZoomFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 980); }
			Vector PivotTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 996); }
			ScriptArray!(ScriptName) WeaponIdleAnims() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1076); }
			ScriptArray!(ScriptName) ArmIdleAnims() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1088); }
			UObject.Color WeaponColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1184); }
			Rotator LockerRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1288); }
			Vector LockerOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1300); }
			float aimerror() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
			UDKPlayerController.ObjectiveAnnouncementInfo NeedToPickUpAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 1320); }
			float ZoomedTurnSpeedScalePct() { return *cast(float*)(cast(size_t)cast(void*)this + 1344); }
			float TargetFrictionDistanceMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1348); }
			float TargetFrictionDistancePeak() { return *cast(float*)(cast(size_t)cast(void*)this + 1352); }
			float TargetFrictionDistanceMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1356); }
			UObject.InterpCurveFloat TargetFrictionDistanceCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 1360); }
			UObject.Vector2D TargetFrictionMultiplierRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1376); }
			float TargetFrictionPeakRadiusScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
			float TargetFrictionPeakHeightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
			Vector TargetFrictionOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1392); }
			float TargetFrictionZoomedBoostValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1404); }
			float TargetAdhesionTimeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1408); }
			float TargetAdhesionDistanceMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1412); }
			float TargetAdhesionAimDistY() { return *cast(float*)(cast(size_t)cast(void*)this + 1416); }
			float TargetAdhesionAimDistZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
			UObject.Vector2D TargetAdhesionScaleRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1424); }
			float TargetAdhesionScaleAmountMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1432); }
			float TargetAdhesionTargetVelocityMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1436); }
			float TargetAdhesionPlayerVelocityMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1440); }
			float TargetAdhesionZoomedBoostValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1444); }
			ScriptArray!(SoundNodeWave) LocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1448); }
		}
		bool bExportMenuData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x1) != 0; }
		bool bExportMenuData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x1; } return val; }
		bool bAllowFiringWithoutController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x40000) != 0; }
		bool bAllowFiringWithoutController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x40000; } return val; }
		bool bSmallWeapons() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x8) != 0; }
		bool bSmallWeapons(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x8; } return val; }
		bool bUseCustomCoordinates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x4) != 0; }
		bool bUseCustomCoordinates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x4; } return val; }
		bool bWasLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x2) != 0; }
		bool bWasLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x2; } return val; }
		bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x40) != 0; }
		bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x40; } return val; }
		bool bMuzzleFlashPSCLoops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x400) != 0; }
		bool bMuzzleFlashPSCLoops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x400; } return val; }
		bool bShowAltMuzzlePSCWhenWeaponHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x200) != 0; }
		bool bShowAltMuzzlePSCWhenWeaponHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x200; } return val; }
		bool bMuzzleFlashAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x800) != 0; }
		bool bMuzzleFlashAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x800; } return val; }
		bool bPendingShow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x100) != 0; }
		bool bPendingShow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x100; } return val; }
		bool bForceHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x200000) != 0; }
		bool bForceHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x200000; } return val; }
		bool bSplashJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x1000) != 0; }
		bool bSplashJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x1000; } return val; }
		bool bUsingAimingHelp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x20000) != 0; }
		bool bUsingAimingHelp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x20000; } return val; }
		bool bSuperWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x10) != 0; }
		bool bSuperWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x10; } return val; }
		bool bNeverForwardPendingFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x20) != 0; }
		bool bNeverForwardPendingFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x20; } return val; }
		bool bUsesOffhand() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x80) != 0; }
		bool bUsesOffhand(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x80; } return val; }
		bool bRecommendSplashDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x2000) != 0; }
		bool bRecommendSplashDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x2000; } return val; }
		bool bSniping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x4000) != 0; }
		bool bSniping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x4000; } return val; }
		bool bFastRepeater() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x8000) != 0; }
		bool bFastRepeater(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x8000; } return val; }
		bool bLockedAimWhileFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x10000) != 0; }
		bool bLockedAimWhileFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x10000; } return val; }
		bool bTargetFrictionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x80000) != 0; }
		bool bTargetFrictionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x80000; } return val; }
		bool bTargetAdhesionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x100000) != 0; }
		bool bTargetAdhesionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x100000; } return val; }
		bool bHasLocationSpeech() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x400000) != 0; }
		bool bHasLocationSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x400000; } return val; }
	}
final:
	int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37500], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CoversScreenSpace(Vector ScreenLoc, Canvas pCanvas)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = ScreenLoc;
		*cast(Canvas*)&params[12] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39644], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	float GetPowerPerc()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40297], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float DesireAmmo(bool bDetour)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDetour;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40504], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void ServerStartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40692], params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40695], cast(void*)0, cast(void*)0);
	}
	void AdjustWeaponTimingForConsole()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40702], cast(void*)0, cast(void*)0);
	}
	void CreateOverlayMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40704], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40709], params.ptr, cast(void*)0);
	}
	void CalcInventoryWeight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40712], cast(void*)0, cast(void*)0);
	}
	bool ShouldSwitchTo(UTWeapon InWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40715], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40718], params.ptr, cast(void*)0);
	}
	void ActiveRenderOverlays(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40722], params.ptr, cast(void*)0);
	}
	void DrawWeaponCrosshair(HUD pHUD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40726], params.ptr, cast(void*)0);
	}
	void DrawLockedOn(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40742], params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
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
	float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40767], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void PlayArmAnimation(ScriptName pSequence, float fDesiredDuration, bool OffHand, bool bLoop, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		*cast(bool*)&params[12] = OffHand;
		*cast(bool*)&params[16] = bLoop;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40770], params.ptr, cast(void*)0);
	}
	void PlayWeaponAnimation(ScriptName pSequence, float fDesiredDuration, bool bLoop, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		*cast(bool*)&params[12] = bLoop;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40781], params.ptr, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40786], params.ptr, cast(void*)0);
	}
	void StopFireEffects(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40791], params.ptr, cast(void*)0);
	}
	void ShakeView()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40793], cast(void*)0, cast(void*)0);
	}
	void WeaponCalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot)
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
	void WeaponPlaySound(SoundCue Sound, float NoiseLoudness, bool bStopWhenOwnerDestroyed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40801], params.ptr, cast(void*)0);
	}
	void PlayFiringSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40806], cast(void*)0, cast(void*)0);
	}
	void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40808], cast(void*)0, cast(void*)0);
	}
	void CauseMuzzleFlashLight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40811], cast(void*)0, cast(void*)0);
	}
	void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40815], cast(void*)0, cast(void*)0);
	}
	void StopMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40823], cast(void*)0, cast(void*)0);
	}
	void TimeWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40824], cast(void*)0, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40825], cast(void*)0, cast(void*)0);
	}
	void TimeWeaponEquipping()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40829], cast(void*)0, cast(void*)0);
	}
	float GetEquipTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40830], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40833], cast(void*)0, cast(void*)0);
	}
	void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40837], params.ptr, cast(void*)0);
	}
	void SetMuzzleFlashParams(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40845], params.ptr, cast(void*)0);
	}
	void AttachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40848], cast(void*)0, cast(void*)0);
	}
	void DetachWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40850], cast(void*)0, cast(void*)0);
	}
	void DetachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40852], cast(void*)0, cast(void*)0);
	}
	void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40854], params.ptr, cast(void*)0);
	}
	void PerformWeaponChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40859], cast(void*)0, cast(void*)0);
	}
	void GetViewAxes(Vector* XAxis, Vector* YAxis, Vector* ZAxis)
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
	void ServerReselectWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40864], cast(void*)0, cast(void*)0);
	}
	bool CanThrow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40865], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	UTPlayerController.EWeaponHand GetHand()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40867], params.ptr, cast(void*)0);
		return *cast(UTPlayerController.EWeaponHand*)params.ptr;
	}
	void SetPosition(UDKPawn Holder, float DeltaSeconds)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKPawn*)params.ptr = Holder;
		*cast(float*)&params[4] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40870], params.ptr, cast(void*)0);
	}
	bool ShouldLagRot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40901], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int LagRot(int NewValue, int LastValue, float MaxDiff, int Index, float DeltaSeconds)
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
	void AdjustPlayerDamage(int* Damage, Controller InstigatedBy, Vector HitLocation, Vector* Momentum, ScriptClass pDamageType)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = *Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = *Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40918], params.ptr, cast(void*)0);
		*Damage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[20];
	}
	float RelativeStrengthVersus(Pawn P, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40924], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	float GetWeaponRating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40928], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40933], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40948], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	bool AmmoMaxed(int Mode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40960], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetDamageRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40964], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool CanHeal(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40967], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetOptimalRangeFor(Actor Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40970], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool FireOnRelease()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40973], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool FocusOnLeader(bool bLeaderFiring)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bLeaderFiring;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40975], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool RecommendRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40978], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float SuggestAttackStyle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40980], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float SuggestDefenseStyle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40982], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40984], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool SplashJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40986], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldFireWithoutTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40989], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ubyte BestMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40991], params.ptr, cast(void*)0);
		return params[0];
	}
	bool IsFullyCharged()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40995], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ReadyToFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40997], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StillFiring(ubyte FireMode)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41000], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41005], params.ptr, cast(void*)0);
	}
	int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41008], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41013], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41017], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool NeedAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41020], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Loaded(bool bUseWeaponMax)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUseWeaponMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41022], params.ptr, cast(void*)0);
	}
	bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41024], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void WeaponEmpty()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41029], cast(void*)0, cast(void*)0);
	}
	bool bReadyToFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41030], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector InstantFireStartTrace()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41032], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector InstantFireEndTrace(Vector StartTrace)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41034], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41037], cast(void*)0, cast(void*)0);
	}
	Actor.ImpactInfo InstantAimHelp(Vector StartTrace, Vector EndTrace, Actor.ImpactInfo RealImpact)
	{
		ubyte params[184];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(Actor.ImpactInfo*)&params[24] = RealImpact;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41047], params.ptr, cast(void*)0);
		return *cast(Actor.ImpactInfo*)&params[104];
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41059], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	void ProcessInstantHit(ubyte FiringMode, Actor.ImpactInfo Impact, int NumHits)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(int*)&params[84] = NumHits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41063], params.ptr, cast(void*)0);
	}
	UTWeapon.EZoomState GetZoomedState()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41070], params.ptr, cast(void*)0);
		return *cast(UTWeapon.EZoomState*)params.ptr;
	}
	bool CheckZoom(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41073], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StartZoom(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41078], params.ptr, cast(void*)0);
	}
	void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41081], params.ptr, cast(void*)0);
	}
	void ClientEndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41085], params.ptr, cast(void*)0);
	}
	void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41087], params.ptr, cast(void*)0);
	}
	void SendToFiringState(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41090], params.ptr, cast(void*)0);
	}
	void ClientWeaponSet(bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41092], params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41096], cast(void*)0, cast(void*)0);
	}
	void PreloadTextures(bool bForcePreload)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForcePreload;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41126], params.ptr, cast(void*)0);
	}
	bool AllowSwitchTo(Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41128], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TryPutDown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41131], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void FiringPutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41136], cast(void*)0, cast(void*)0);
	}
	Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41137], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	Vector GetEffectLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41152], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void RefireCheckTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41156], cast(void*)0, cast(void*)0);
	}
	void SetupArmsAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41157], cast(void*)0, cast(void*)0);
	}
	AnimNodeSequence GetArmAnimNodeSeq()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41168], params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41171], cast(void*)0, cast(void*)0);
	}
	void SetWeaponOverlayFlags(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41189], params.ptr, cast(void*)0);
	}
	float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41196], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41206], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ThrottleLook(float* aTurn, float* aLookUp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *aTurn;
		*cast(float*)&params[4] = *aLookUp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41208], params.ptr, cast(void*)0);
		*aTurn = *cast(float*)params.ptr;
		*aLookUp = *cast(float*)&params[4];
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41211], cast(void*)0, cast(void*)0);
	}
	void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41212], params.ptr, cast(void*)0);
	}
	void ClientWeaponThrown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41215], cast(void*)0, cast(void*)0);
	}
	bool CanViewAccelerationWhenFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41216], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41218], cast(void*)0, cast(void*)0);
	}
	void HolderExitedVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41219], cast(void*)0, cast(void*)0);
	}
	void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
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
	bool EnableFriendlyWarningCrosshair()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41232], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
