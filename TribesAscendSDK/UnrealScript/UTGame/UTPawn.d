module UnrealScript.UTGame.UTPawn;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.UTGame.UTAnimBlendByHoverboarding;
import UnrealScript.UTGame.UTClientSideWeaponPawn;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.UTGame.UTSeqAct_InfiniteAmmo;
import UnrealScript.Engine.AnimNodeBlend;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.UTGame.UTGib;
import UnrealScript.Engine.SVehicle;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.Material;
import UnrealScript.UTGame.UTAnimBlendByDriving;
import UnrealScript.UTGame.UTSeqAct_PlayAnim;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.UTGame.UTAnimBlendByVehicle;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Teleporter;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_ModifyHealth;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UTGame.UTSeqAct_ExitVehicle;
import UnrealScript.Engine.Texture;
import UnrealScript.UTGame.UTProjectile;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTSeqAct_UseHoverboard;
import UnrealScript.UTGame.UTWeaponAttachment;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTWeapon;

extern(C++) interface UTPawn : UDKPawn
{
	public static immutable auto MINTIMEBETWEENPAINSOUNDS = 0.35;
	enum EWeapAnimType : ubyte
	{
		EWAT_Default = 0,
		EWAT_Pistol = 1,
		EWAT_DualPistols = 2,
		EWAT_ShoulderRocket = 3,
		EWAT_Stinger = 4,
		EWAT_MAX = 5,
	}
	struct GibInfo
	{
		public @property final auto ref ScriptClass GibClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
		private ubyte __GibClass[4];
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __BoneName[8];
		public @property final bool bHighDetailOnly() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bHighDetailOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bHighDetailOnly[4];
	}
	public @property final auto ref float CurrentCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1700); }
	public @property final auto ref float CameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1696); }
	public @property final auto ref Vector WalkBob() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1780); }
	public @property final auto ref float VestArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1876); }
	public @property final auto ref float ShieldBeltArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1872); }
	public @property final auto ref ScriptClass HoverboardClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2072); }
	public @property final bool bIsInvulnerable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x40) != 0; }
	public @property final bool bIsInvulnerable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x40; } return val; }
	public @property final bool bFixedView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x1) != 0; }
	public @property final bool bFixedView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x1; } return val; }
	public @property final auto ref Vector FixedViewLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1672); }
	public @property final auto ref Rotator FixedViewRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1684); }
	public @property final auto ref float LandBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1764); }
	public @property final bool bJustLanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x400) != 0; }
	public @property final bool bJustLanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x400; } return val; }
	public @property final bool bLandRecovery() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x800) != 0; }
	public @property final bool bLandRecovery(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x800; } return val; }
	public @property final bool bArmsAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x20000) != 0; }
	public @property final bool bArmsAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x20000; } return val; }
	public @property final auto ref ScriptClass CurrentWeaponAttachmentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1620); }
	public @property final bool bStopDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x2000) != 0; }
	public @property final bool bStopDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x2000; } return val; }
	public @property final auto ref float LastPainSound() { return *cast(float*)(cast(size_t)cast(void*)this + 2052); }
	public @property final auto ref float MapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2032); }
	public @property final auto ref UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2036); }
	public @property final auto ref UTWeaponAttachment CurrentWeaponAttachment() { return *cast(UTWeaponAttachment*)(cast(size_t)cast(void*)this + 1884); }
	public @property final auto ref ScriptClass CurrCharClassInfo() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1812); }
	public @property final auto ref ScriptArray!(ScriptName) TakeHitPhysicsFixedBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1816); }
	public @property final auto ref ScriptClass SoundGroupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1808); }
	public @property final auto ref float DefaultMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2116); }
	public @property final auto ref ScriptArray!(ScriptName) NoDriveBodies() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1828); }
	public @property final bool bReceivedValidTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x200000) != 0; }
	public @property final bool bReceivedValidTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x200000; } return val; }
	public @property final auto ref AnimNodeBlend FeignDeathBlend() { return *cast(AnimNodeBlend*)(cast(size_t)cast(void*)this + 1632); }
	public @property final auto ref AnimNodeSlot FullBodyAnimSlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 1636); }
	public @property final auto ref AnimNodeSlot TopHalfAnimSlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 1640); }
	public @property final auto ref UTAnimBlendByDriving DrivingNode() { return *cast(UTAnimBlendByDriving*)(cast(size_t)cast(void*)this + 1860); }
	public @property final auto ref UTAnimBlendByVehicle VehicleNode() { return *cast(UTAnimBlendByVehicle*)(cast(size_t)cast(void*)this + 1864); }
	public @property final auto ref UTAnimBlendByHoverboarding HoverboardingNode() { return *cast(UTAnimBlendByHoverboarding*)(cast(size_t)cast(void*)this + 1868); }
	public @property final bool bWeaponBob() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x200) != 0; }
	public @property final bool bWeaponBob(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x200; } return val; }
	public @property final auto ref float JumpBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1768); }
	public @property final auto ref ScriptName TauntNames() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2120); }
	public @property final auto ref float bobtime() { return *cast(float*)(cast(size_t)cast(void*)this + 1776); }
	public @property final auto ref float Bob() { return *cast(float*)(cast(size_t)cast(void*)this + 1760); }
	public @property final auto ref float AppliedBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1772); }
	public @property final bool bWeaponAttachmentVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x40000) != 0; }
	public @property final bool bWeaponAttachmentVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x40000; } return val; }
	public @property final bool bSpawnDone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x2) != 0; }
	public @property final bool bSpawnDone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x2; } return val; }
	public @property final bool bSpawnIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x4) != 0; }
	public @property final bool bSpawnIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x4; } return val; }
	public @property final auto ref UObject.LinearColor SpawnProtectionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2008); }
	public @property final auto ref SoundCue SpawnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2000); }
	public @property final auto ref UObject.LinearColor TranslocateColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1952); }
	public @property final auto ref SoundCue TeleportSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2004); }
	public @property final auto ref CameraAnim TransCameraAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 1984); }
	public @property final auto ref ScriptClass TransInEffects() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1944); }
	public @property final auto ref UTClientSideWeaponPawn ClientSideWeaponPawn() { return *cast(UTClientSideWeaponPawn*)(cast(size_t)cast(void*)this + 2088); }
	public @property final auto ref float ThighpadArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1880); }
	public @property final bool bShieldAbsorb() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x8) != 0; }
	public @property final bool bShieldAbsorb(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x8; } return val; }
	public @property final auto ref SoundCue ArmorHitSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1996); }
	public @property final bool bJustDroppedOrb() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x80) != 0; }
	public @property final bool bJustDroppedOrb(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x80; } return val; }
	public @property final auto ref float MaxFootstepDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2064); }
	public @property final auto ref float MaxJumpSoundDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2068); }
	public @property final bool bHeadGibbed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x10000) != 0; }
	public @property final bool bHeadGibbed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x10000; } return val; }
	public @property final bool bGibbed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x8000) != 0; }
	public @property final bool bGibbed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x8000; } return val; }
	public @property final auto ref float DeathTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2200); }
	public @property final bool bForcedFeignDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x100) != 0; }
	public @property final bool bForcedFeignDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x100; } return val; }
	public @property final bool bHideOnListenServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x80000) != 0; }
	public @property final bool bHideOnListenServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x80000; } return val; }
	public @property final auto ref float DeathHipLinSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
	public @property final auto ref float DeathHipLinDamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1648); }
	public @property final auto ref float DeathHipAngSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 1652); }
	public @property final auto ref float DeathHipAngDamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1656); }
	public @property final auto ref float StartDeathAnimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1660); }
	public @property final auto ref float TimeLastTookDeathAnimDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1668); }
	public @property final auto ref ScriptClass DeathAnimDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1664); }
	public @property final auto ref float CameraZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1724); }
	public @property final bool bWinnerCam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x4000) != 0; }
	public @property final bool bWinnerCam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x4000; } return val; }
	public @property final auto ref int HeroCameraPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1732); }
	public @property final auto ref float HeroCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
	public @property final auto ref Vector CamOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2172); }
	public @property final auto ref float DodgeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
	public @property final auto ref float DodgeSpeedZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
	public @property final bool bDodging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x10) != 0; }
	public @property final bool bDodging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x10; } return val; }
	public @property final auto ref int JumpBootCharge() { return *cast(int*)(cast(size_t)cast(void*)this + 2112); }
	public @property final auto ref Actor.EDoubleClickDir CurrentDir() { return *cast(Actor.EDoubleClickDir*)(cast(size_t)cast(void*)this + 1744); }
	public @property final auto ref float DoubleJumpEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1748); }
	public @property final auto ref float DoubleJumpThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1752); }
	public @property final bool bStopOnDoubleLanding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x20) != 0; }
	public @property final bool bStopOnDoubleLanding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x20; } return val; }
	public @property final auto ref float DefaultAirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 1756); }
	public @property final auto ref MaterialInterface ShieldBeltTeamMaterialInstances() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2096); }
	public @property final auto ref MaterialInterface ShieldBeltMaterialInstance() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2092); }
	public @property final auto ref float FeignDeathStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1796); }
	public @property final auto ref float FeignDeathBodyAtRestSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1792); }
	public @property final auto ref int UnfeignFailedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1624); }
	public @property final auto ref float FeignDeathRecoveryStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1800); }
	public @property final auto ref ScriptName HeadBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1932); }
	public @property final bool bKillsAffectHead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x400000) != 0; }
	public @property final bool bKillsAffectHead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x400000; } return val; }
	public @property final auto ref UDKPawn.DrivenWeaponPawnInfo LastDrivenWeaponPawn() { return *cast(UDKPawn.DrivenWeaponPawnInfo*)(cast(size_t)cast(void*)this + 2076); }
	public @property final auto ref ScriptClass m_ClientSideWeaponPawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2204); }
	public @property final auto ref UTProjectile AttachedProj() { return *cast(UTProjectile*)(cast(size_t)cast(void*)this + 2060); }
	public @property final auto ref float AccumulationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1848); }
	public @property final auto ref float AccumulateDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1844); }
	public @property final bool bHasHoverboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x1000) != 0; }
	public @property final bool bHasHoverboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x1000; } return val; }
	public @property final auto ref float LastHoverboardTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1852); }
	public @property final auto ref float MinHoverboardInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 1856); }
	public @property final auto ref float HeadHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1928); }
	public @property final auto ref float HeadRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1924); }
	public @property final auto ref float CameraScaleMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1704); }
	public @property final auto ref float CameraScaleMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1708); }
	public @property final auto ref ForceFeedbackWaveform FallingDamageWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 1840); }
	public @property final auto ref Vector OldCameraPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1712); }
	public @property final bool bKilledByBio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x800000) != 0; }
	public @property final bool bKilledByBio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x800000; } return val; }
	public @property final auto ref float BioBurnAwayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
	public @property final auto ref ScriptName BioEffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2192); }
	public @property final auto ref float RagdollLifespan() { return *cast(float*)(cast(size_t)cast(void*)this + 2056); }
	public @property final bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x100000) != 0; }
	public @property final bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x100000; } return val; }
	public @property final auto ref int SuperHealthMax() { return *cast(int*)(cast(size_t)cast(void*)this + 1804); }
	public @property final auto ref ScriptName WeaponSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1888); }
	public @property final auto ref ScriptName WeaponSocket2() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1896); }
	public @property final auto ref ScriptName PawnEffectSockets() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1904); }
	public @property final auto ref float HeadOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1920); }
	public @property final auto ref float TeamBeaconPlayerInfoMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
	public @property final auto ref Texture SpeakingBeaconTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 2028); }
	public @property final auto ref float DesiredMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
	final bool CanDoubleJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36507], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Vector WeaponBob(float BobDamping, float JumpDamping)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = BobDamping;
		*cast(float*)&params[4] = JumpDamping;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40890], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	final float GetEyeHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40899], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41310], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void AdjustPPEffects(UTPlayerController PC, bool bRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41359], params.ptr, cast(void*)0);
	}
	final float AdjustedStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41363], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final UTPlayerReplicationInfo GetUTPlayerReplicationInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41365], params.ptr, cast(void*)0);
		return *cast(UTPlayerReplicationInfo*)params.ptr;
	}
	final void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41368], params.ptr, cast(void*)0);
	}
	final void HeadVolumeChange(PhysicsVolume newHeadVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = newHeadVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41371], params.ptr, cast(void*)0);
	}
	final bool PoweredUp()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41373], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool InCombat()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41375], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UObject.LinearColor FinalColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[12] = FinalColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41378], params.ptr, cast(void*)0);
	}
	final void SetWalking(bool bNewIsWalking)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewIsWalking;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41385], params.ptr, cast(void*)0);
	}
	final void ClearBodyMatColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41387], cast(void*)0, cast(void*)0);
	}
	final void SetBodyMatColor(UObject.LinearColor NewBodyMatColor, float NewOverlayDuration)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = NewBodyMatColor;
		*cast(float*)&params[16] = NewOverlayDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41388], params.ptr, cast(void*)0);
	}
	final void SetInvisible(bool bNowInvisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowInvisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41391], params.ptr, cast(void*)0);
	}
	final void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41393], params.ptr, cast(void*)0);
	}
	final void SetArmsSkin(MaterialInterface NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41397], params.ptr, cast(void*)0);
	}
	final bool VerifyBodyMaterialInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41404], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetCharacterClassFromInfo(ScriptClass Info, bool bForce)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Info;
		*cast(bool*)&params[4] = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41407], params.ptr, cast(void*)0);
	}
	final void SetCharacterMeshInfo(SkeletalMesh SkelMesh, MaterialInterface HeadMaterial, MaterialInterface BodyMaterial)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = SkelMesh;
		*cast(MaterialInterface*)&params[4] = HeadMaterial;
		*cast(MaterialInterface*)&params[8] = BodyMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41437], params.ptr, cast(void*)0);
	}
	final void SetPawnRBChannels(bool bRagdollMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRagdollMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41441], params.ptr, cast(void*)0);
	}
	final void ResetCharPhysState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41443], cast(void*)0, cast(void*)0);
	}
	final void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41445], cast(void*)0, cast(void*)0);
	}
	final void SetFirstPersonArmsInfo(SkeletalMesh FirstPersonArmMesh, MaterialInterface ArmMaterial)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = FirstPersonArmMesh;
		*cast(MaterialInterface*)&params[4] = ArmMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41450], params.ptr, cast(void*)0);
	}
	final void SetTeamColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41453], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41457], cast(void*)0, cast(void*)0);
	}
	final void UpdateShadowSettings(bool bWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWantShadow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41460], params.ptr, cast(void*)0);
	}
	final void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41464], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41465], params.ptr, cast(void*)0);
	}
	final void SetHandIKEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41473], params.ptr, cast(void*)0);
	}
	final void SetAnimRateScale(float RateScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = RateScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41475], params.ptr, cast(void*)0);
	}
	final void SetWeapAnimType(UTPawn.EWeapAnimType AnimType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPawn.EWeapAnimType*)params.ptr = AnimType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41477], params.ptr, cast(void*)0);
	}
	final void LeaveABloodSplatterDecal(Vector HitLoc, Vector HitNorm)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNorm;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41480], params.ptr, cast(void*)0);
	}
	final void PerformEmoteCommand(UDKPawn.EmoteInfo EInfo, int PlayerID)
	{
		ubyte params[56];
		params[] = 0;
		*cast(UDKPawn.EmoteInfo*)params.ptr = EInfo;
		*cast(int*)&params[52] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41494], params.ptr, cast(void*)0);
	}
	final void DoPlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41503], params.ptr, cast(void*)0);
	}
	final void ServerPlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41513], params.ptr, cast(void*)0);
	}
	final void PlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41516], params.ptr, cast(void*)0);
	}
	final void OnPlayAnim(UTSeqAct_PlayAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_PlayAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41519], params.ptr, cast(void*)0);
	}
	final void SpawnDefaultController()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41542], cast(void*)0, cast(void*)0);
	}
	final void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41553], cast(void*)0, cast(void*)0);
	}
	final bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41554], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41557], params.ptr, cast(void*)0);
	}
	final void gibbedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41560], params.ptr, cast(void*)0);
	}
	final void JumpOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41564], cast(void*)0, cast(void*)0);
	}
	final void StuckOnPawn(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41565], params.ptr, cast(void*)0);
	}
	final void Falling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41567], cast(void*)0, cast(void*)0);
	}
	final void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass DamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41568], params.ptr, cast(void*)0);
	}
	final bool Died(Controller Killer, ScriptClass DamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = DamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41574], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41579], params.ptr, cast(void*)0);
	}
	final bool StopFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41581], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool BotFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41583], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool StopWeaponFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41588], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ubyte ChooseFireMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41593], params.ptr, cast(void*)0);
		return params[0];
	}
	final bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41595], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41597], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void PlayVictoryAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41599], cast(void*)0, cast(void*)0);
	}
	final void OnModifyHealth(SeqAct_ModifyHealth Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyHealth*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41601], params.ptr, cast(void*)0);
	}
	final ScriptString GetScreenName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41603], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41605], params.ptr, cast(void*)0);
	}
	final void UpdateEyeHeight(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41608], params.ptr, cast(void*)0);
	}
	final Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41626], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41628], params.ptr, cast(void*)0);
	}
	final void EndViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41632], params.ptr, cast(void*)0);
	}
	final void SetWeaponVisibility(bool bWeaponVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWeaponVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41634], params.ptr, cast(void*)0);
	}
	final void SetWeaponAttachmentVisibility(bool bAttachmentVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachmentVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41640], params.ptr, cast(void*)0);
	}
	final void SetMeshVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41643], params.ptr, cast(void*)0);
	}
	final void DeactivateSpawnProtection()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41646], cast(void*)0, cast(void*)0);
	}
	final void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41650], params.ptr, cast(void*)0);
	}
	final void SpawnTransEffect(int TeamNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41660], params.ptr, cast(void*)0);
	}
	final void StartDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41663], params.ptr, cast(void*)0);
	}
	final void StopDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41669], params.ptr, cast(void*)0);
	}
	final void ClientRestart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41674], cast(void*)0, cast(void*)0);
	}
	final int GetShieldStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41676], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int AbsorbDamage(int* Damage, int CurrentShieldStrength, float AbsorptionRate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = *Damage;
		*cast(int*)&params[4] = CurrentShieldStrength;
		*cast(float*)&params[8] = AbsorptionRate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41679], params.ptr, cast(void*)0);
		*Damage = *cast(int*)params.ptr;
		return *cast(int*)&params[12];
	}
	final int ShieldAbsorb(int Damage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41685], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void AdjustDamage(int* InDamage, Vector* Momentum, Controller InstigatedBy, Vector HitLocation, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = *InDamage;
		*cast(Vector*)&params[4] = *Momentum;
		*cast(Controller*)&params[16] = InstigatedBy;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41690], params.ptr, cast(void*)0);
		*InDamage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[4];
	}
	final void DropFlag(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41699], params.ptr, cast(void*)0);
	}
	final void EnableInventoryPickup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41703], cast(void*)0, cast(void*)0);
	}
	final void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41704], params.ptr, cast(void*)0);
	}
	final bool GiveHealth(int HealAmount, int HealMax)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(int*)&params[4] = HealMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41712], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final ScriptString GetDebugName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41716], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void PlayFootStepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41718], params.ptr, cast(void*)0);
	}
	final void ActuallyPlayFootstepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41722], params.ptr, cast(void*)0);
	}
	final ScriptName GetMaterialBelowFeet()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41728], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final void PlayLandingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41738], cast(void*)0, cast(void*)0);
	}
	final void PlayJumpingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41743], cast(void*)0, cast(void*)0);
	}
	final bool ShouldGib(ScriptClass UTDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = UTDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41747], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SpawnHeadGib(ScriptClass UTDamageType, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = UTDamageType;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41752], params.ptr, cast(void*)0);
	}
	final UTGib SpawnGib(ScriptClass GibClass, ScriptName BoneName, ScriptClass UTDamageType, Vector HitLocation, bool bSpinGib)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GibClass;
		*cast(ScriptName*)&params[4] = BoneName;
		*cast(ScriptClass*)&params[12] = UTDamageType;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(bool*)&params[28] = bSpinGib;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41772], params.ptr, cast(void*)0);
		return *cast(UTGib*)&params[32];
	}
	final void SpawnGibs(ScriptClass UTDamageType, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = UTDamageType;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41789], params.ptr, cast(void*)0);
	}
	final void TurnOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41802], cast(void*)0, cast(void*)0);
	}
	final void PlayDying(ScriptClass DamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41803], params.ptr, cast(void*)0);
	}
	final void DoingDeathAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41835], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41844], cast(void*)0, cast(void*)0);
	}
	final void AddDefaultInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41847], cast(void*)0, cast(void*)0);
	}
	final bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41848], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	final void SetThirdPersonCamera(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41854], params.ptr, cast(void*)0);
	}
	final void FindGoodEndView(PlayerController InPC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = InPC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41857], params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	final bool TryNewCamRot(UTPlayerController PC, Rotator ViewRotation, float* CamDist)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = ViewRotation;
		*cast(float*)&params[16] = *CamDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41867], params.ptr, cast(void*)0);
		*CamDist = *cast(float*)&params[16];
		return *cast(bool*)&params[20];
	}
	final void SetHeroCam(Rotator* out_CamRot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41875], params.ptr, cast(void*)0);
		*out_CamRot = *cast(Rotator*)params.ptr;
	}
	final bool CalcThirdPersonCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41878], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	final Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41893], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41896], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Vector BotDodge(Vector Dir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41910], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final bool PerformDodge(Actor.EDoubleClickDir DoubleClickMove, Vector Dir, Vector Cross)
	{
		ubyte params[29];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		*cast(Vector*)&params[4] = Dir;
		*cast(Vector*)&params[16] = Cross;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41916], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void DoDoubleJump(bool bUpdating)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41925], params.ptr, cast(void*)0);
	}
	final void Gasp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41928], cast(void*)0, cast(void*)0);
	}
	final void StartFlying()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41929], cast(void*)0, cast(void*)0);
	}
	final void StopFlying()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41930], cast(void*)0, cast(void*)0);
	}
	final bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41931], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41935], params.ptr, cast(void*)0);
	}
	final void JumpOutOfWater(Vector JumpDir)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = JumpDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41941], params.ptr, cast(void*)0);
	}
	final bool CanMultiJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41943], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PlayDyingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41945], cast(void*)0, cast(void*)0);
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41946], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final void SetPawnAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41956], params.ptr, cast(void*)0);
	}
	final SoundCue GetPawnAmbientSound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41958], params.ptr, cast(void*)0);
		return *cast(SoundCue*)params.ptr;
	}
	final void SetWeaponAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41960], params.ptr, cast(void*)0);
	}
	final SoundCue GetWeaponAmbientSound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41962], params.ptr, cast(void*)0);
		return *cast(SoundCue*)params.ptr;
	}
	final void SetOverlayMaterial(MaterialInterface NewOverlay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewOverlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41964], params.ptr, cast(void*)0);
	}
	final MaterialInterface GetShieldMaterialInstance(bool bTeamGame)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bTeamGame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41967], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	final MaterialInterface GetOverlayMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41972], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)params.ptr;
	}
	final void SetWeaponOverlayFlag(ubyte FlagToSet)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FlagToSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41974], params.ptr, cast(void*)0);
	}
	final void ClearWeaponOverlayFlag(ubyte FlagToClear)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FlagToClear;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41976], params.ptr, cast(void*)0);
	}
	final void ApplyWeaponOverlayFlags(ubyte NewFlags)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewFlags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41978], params.ptr, cast(void*)0);
	}
	final void StartFeignDeathRecoveryAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41982], cast(void*)0, cast(void*)0);
	}
	final void FeignDeathDelayTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41984], cast(void*)0, cast(void*)0);
	}
	final void PlayFeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41987], cast(void*)0, cast(void*)0);
	}
	final bool SetFeignEndLocation(Vector HitLocation, Vector FeignLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = FeignLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42001], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool CheckValidLocation(Vector FeignLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FeignLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42006], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void ServerFeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42012], cast(void*)0, cast(void*)0);
	}
	final void FeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42013], cast(void*)0, cast(void*)0);
	}
	final void ForceRagdoll()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42014], cast(void*)0, cast(void*)0);
	}
	final void FiringModeUpdated(Weapon InWeapon, ubyte InFiringMode, bool bViaReplication)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42015], params.ptr, cast(void*)0);
	}
	final void SetBigHead()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42019], cast(void*)0, cast(void*)0);
	}
	final void FireRateChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42021], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42022], params.ptr, cast(void*)0);
	}
	final void SetHeadScale(float NewScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42026], params.ptr, cast(void*)0);
	}
	final void SetPuttingDownWeapon(bool bNowPuttingDownWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPuttingDownWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42029], params.ptr, cast(void*)0);
	}
	final bool GetPuttingDownWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42031], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42033], params.ptr, cast(void*)0);
	}
	final void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42045], params.ptr, cast(void*)0);
	}
	final void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42050], params.ptr, cast(void*)0);
	}
	final void WeaponChanged(UTWeapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42053], params.ptr, cast(void*)0);
	}
	final void WeaponAttachmentChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42056], cast(void*)0, cast(void*)0);
	}
	final void PlayHit(float Damage, Controller InstigatedBy, Vector HitLocation, ScriptClass DamageType, Vector Momentum, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(ScriptClass*)&params[20] = DamageType;
		*cast(Vector*)&params[24] = Momentum;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42057], params.ptr, cast(void*)0);
	}
	final void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42069], cast(void*)0, cast(void*)0);
	}
	final void TakeHitBlendedOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42080], cast(void*)0, cast(void*)0);
	}
	final void ServerHoverboard()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42081], cast(void*)0, cast(void*)0);
	}
	final void OnUseHoverboard(UTSeqAct_UseHoverboard Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_UseHoverboard*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42093], params.ptr, cast(void*)0);
	}
	final void SwitchWeapon(ubyte NewGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42097], params.ptr, cast(void*)0);
	}
	final void TakeDrowningDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42099], cast(void*)0, cast(void*)0);
	}
	final bool IsLocationOnHead(Actor.ImpactInfo* Impact, float AdditionalScale)
	{
		ubyte params[88];
		params[] = 0;
		*cast(Actor.ImpactInfo*)params.ptr = *Impact;
		*cast(float*)&params[80] = AdditionalScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42100], params.ptr, cast(void*)0);
		*Impact = *cast(Actor.ImpactInfo*)params.ptr;
		return *cast(bool*)&params[84];
	}
	final void ModifyRotForDebugFreeCam(Rotator* out_CamRot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42108], params.ptr, cast(void*)0);
		*out_CamRot = *cast(Rotator*)params.ptr;
	}
	final void AdjustCameraScale(bool bMoveCameraIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveCameraIn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42112], params.ptr, cast(void*)0);
	}
	final Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42116], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	final void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42119], cast(void*)0, cast(void*)0);
	}
	final void SetOverlayVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42121], params.ptr, cast(void*)0);
	}
	final void TakeFallingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42123], cast(void*)0, cast(void*)0);
	}
	final void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComponent, Actor.CollisionImpactData* RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42126], params.ptr, cast(void*)0);
		*RigidCollisionData = *cast(Actor.CollisionImpactData*)&params[8];
	}
	final void OnRanOver(SVehicle Vehicle, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* RunOverComponent, int WheelIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SVehicle*)params.ptr = Vehicle;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = RunOverComponent;
		*cast(int*)&params[8] = WheelIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42131], params.ptr, cast(void*)0);
	}
	final void StuckFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42136], cast(void*)0, cast(void*)0);
	}
	final void OnExitVehicle(UTSeqAct_ExitVehicle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_ExitVehicle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42137], params.ptr, cast(void*)0);
	}
	final void OnInfiniteAmmo(UTSeqAct_InfiniteAmmo Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_InfiniteAmmo*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42139], params.ptr, cast(void*)0);
	}
	final void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42144], params.ptr, cast(void*)0);
	}
	final bool NeedToTurn(Vector targ)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = targ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42147], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final ScriptClass GetFamilyInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42273], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	final void PostTeleport(Teleporter OutTeleporter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Teleporter*)params.ptr = OutTeleporter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42276], params.ptr, cast(void*)0);
	}
	final void PostBigTeleport()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42278], cast(void*)0, cast(void*)0);
	}
}
