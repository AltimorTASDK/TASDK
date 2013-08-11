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
public extern(D):
	enum MINTIMEBETWEENPAINSOUNDS = 0.35;
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
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptClass GibClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
				ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bHighDetailOnly() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bHighDetailOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			float CurrentCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1700); }
			float CameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1696); }
			Vector WalkBob() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1780); }
			float VestArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1876); }
			float ShieldBeltArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1872); }
			ScriptClass HoverboardClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2072); }
			Vector FixedViewLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1672); }
			Rotator FixedViewRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1684); }
			float LandBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1764); }
			ScriptClass CurrentWeaponAttachmentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1620); }
			float LastPainSound() { return *cast(float*)(cast(size_t)cast(void*)this + 2052); }
			float MapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2032); }
			UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2036); }
			UTWeaponAttachment CurrentWeaponAttachment() { return *cast(UTWeaponAttachment*)(cast(size_t)cast(void*)this + 1884); }
			ScriptClass CurrCharClassInfo() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1812); }
			ScriptArray!(ScriptName) TakeHitPhysicsFixedBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1816); }
			ScriptClass SoundGroupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1808); }
			float DefaultMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2116); }
			ScriptArray!(ScriptName) NoDriveBodies() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1828); }
			AnimNodeBlend FeignDeathBlend() { return *cast(AnimNodeBlend*)(cast(size_t)cast(void*)this + 1632); }
			AnimNodeSlot FullBodyAnimSlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 1636); }
			AnimNodeSlot TopHalfAnimSlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 1640); }
			UTAnimBlendByDriving DrivingNode() { return *cast(UTAnimBlendByDriving*)(cast(size_t)cast(void*)this + 1860); }
			UTAnimBlendByVehicle VehicleNode() { return *cast(UTAnimBlendByVehicle*)(cast(size_t)cast(void*)this + 1864); }
			UTAnimBlendByHoverboarding HoverboardingNode() { return *cast(UTAnimBlendByHoverboarding*)(cast(size_t)cast(void*)this + 1868); }
			float JumpBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1768); }
			ScriptName TauntNames() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2120); }
			float bobtime() { return *cast(float*)(cast(size_t)cast(void*)this + 1776); }
			float Bob() { return *cast(float*)(cast(size_t)cast(void*)this + 1760); }
			float AppliedBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1772); }
			UObject.LinearColor SpawnProtectionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2008); }
			SoundCue SpawnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2000); }
			UObject.LinearColor TranslocateColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1952); }
			SoundCue TeleportSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2004); }
			CameraAnim TransCameraAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 1984); }
			ScriptClass TransInEffects() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1944); }
			UTClientSideWeaponPawn ClientSideWeaponPawn() { return *cast(UTClientSideWeaponPawn*)(cast(size_t)cast(void*)this + 2088); }
			float ThighpadArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1880); }
			SoundCue ArmorHitSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1996); }
			float MaxFootstepDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2064); }
			float MaxJumpSoundDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2068); }
			float DeathTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2200); }
			float DeathHipLinSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
			float DeathHipLinDamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1648); }
			float DeathHipAngSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 1652); }
			float DeathHipAngDamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1656); }
			float StartDeathAnimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1660); }
			float TimeLastTookDeathAnimDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1668); }
			ScriptClass DeathAnimDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1664); }
			float CameraZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1724); }
			int HeroCameraPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1732); }
			float HeroCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
			Vector CamOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2172); }
			float DodgeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
			float DodgeSpeedZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
			int JumpBootCharge() { return *cast(int*)(cast(size_t)cast(void*)this + 2112); }
			Actor.EDoubleClickDir CurrentDir() { return *cast(Actor.EDoubleClickDir*)(cast(size_t)cast(void*)this + 1744); }
			float DoubleJumpEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1748); }
			float DoubleJumpThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1752); }
			float DefaultAirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 1756); }
			MaterialInterface ShieldBeltTeamMaterialInstances() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2096); }
			MaterialInterface ShieldBeltMaterialInstance() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2092); }
			float FeignDeathStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1796); }
			float FeignDeathBodyAtRestSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1792); }
			int UnfeignFailedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1624); }
			float FeignDeathRecoveryStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1800); }
			ScriptName HeadBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1932); }
			UDKPawn.DrivenWeaponPawnInfo LastDrivenWeaponPawn() { return *cast(UDKPawn.DrivenWeaponPawnInfo*)(cast(size_t)cast(void*)this + 2076); }
			ScriptClass m_ClientSideWeaponPawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2204); }
			UTProjectile AttachedProj() { return *cast(UTProjectile*)(cast(size_t)cast(void*)this + 2060); }
			float AccumulationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1848); }
			float AccumulateDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1844); }
			float LastHoverboardTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1852); }
			float MinHoverboardInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 1856); }
			float HeadHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1928); }
			float HeadRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1924); }
			float CameraScaleMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1704); }
			float CameraScaleMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1708); }
			ForceFeedbackWaveform FallingDamageWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 1840); }
			Vector OldCameraPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1712); }
			float BioBurnAwayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
			ScriptName BioEffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2192); }
			float RagdollLifespan() { return *cast(float*)(cast(size_t)cast(void*)this + 2056); }
			int SuperHealthMax() { return *cast(int*)(cast(size_t)cast(void*)this + 1804); }
			ScriptName WeaponSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1888); }
			ScriptName WeaponSocket2() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1896); }
			ScriptName PawnEffectSockets() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1904); }
			float HeadOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1920); }
			float TeamBeaconPlayerInfoMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
			Texture SpeakingBeaconTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 2028); }
			float DesiredMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
		}
		bool bIsInvulnerable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x40) != 0; }
		bool bIsInvulnerable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x40; } return val; }
		bool bFixedView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x1) != 0; }
		bool bFixedView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x1; } return val; }
		bool bJustLanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x400) != 0; }
		bool bJustLanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x400; } return val; }
		bool bLandRecovery() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x800) != 0; }
		bool bLandRecovery(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x800; } return val; }
		bool bArmsAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x20000) != 0; }
		bool bArmsAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x20000; } return val; }
		bool bStopDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x2000) != 0; }
		bool bStopDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x2000; } return val; }
		bool bReceivedValidTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x200000) != 0; }
		bool bReceivedValidTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x200000; } return val; }
		bool bWeaponBob() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x200) != 0; }
		bool bWeaponBob(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x200; } return val; }
		bool bWeaponAttachmentVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x40000) != 0; }
		bool bWeaponAttachmentVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x40000; } return val; }
		bool bSpawnDone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x2) != 0; }
		bool bSpawnDone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x2; } return val; }
		bool bSpawnIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x4) != 0; }
		bool bSpawnIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x4; } return val; }
		bool bShieldAbsorb() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x8) != 0; }
		bool bShieldAbsorb(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x8; } return val; }
		bool bJustDroppedOrb() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x80) != 0; }
		bool bJustDroppedOrb(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x80; } return val; }
		bool bHeadGibbed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x10000) != 0; }
		bool bHeadGibbed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x10000; } return val; }
		bool bGibbed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x8000) != 0; }
		bool bGibbed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x8000; } return val; }
		bool bForcedFeignDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x100) != 0; }
		bool bForcedFeignDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x100; } return val; }
		bool bHideOnListenServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x80000) != 0; }
		bool bHideOnListenServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x80000; } return val; }
		bool bWinnerCam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x4000) != 0; }
		bool bWinnerCam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x4000; } return val; }
		bool bDodging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x10) != 0; }
		bool bDodging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x10; } return val; }
		bool bStopOnDoubleLanding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x20) != 0; }
		bool bStopOnDoubleLanding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x20; } return val; }
		bool bKillsAffectHead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x400000) != 0; }
		bool bKillsAffectHead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x400000; } return val; }
		bool bHasHoverboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x1000) != 0; }
		bool bHasHoverboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x1000; } return val; }
		bool bKilledByBio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x800000) != 0; }
		bool bKilledByBio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x800000; } return val; }
		bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x100000) != 0; }
		bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x100000; } return val; }
	}
final:
	bool CanDoubleJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36507], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector WeaponBob(float BobDamping, float JumpDamping)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = BobDamping;
		*cast(float*)&params[4] = JumpDamping;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40890], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	float GetEyeHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40899], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41310], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AdjustPPEffects(UTPlayerController PC, bool bRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41359], params.ptr, cast(void*)0);
	}
	float AdjustedStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41363], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	UTPlayerReplicationInfo GetUTPlayerReplicationInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41365], params.ptr, cast(void*)0);
		return *cast(UTPlayerReplicationInfo*)params.ptr;
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41368], params.ptr, cast(void*)0);
	}
	void HeadVolumeChange(PhysicsVolume newHeadVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = newHeadVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41371], params.ptr, cast(void*)0);
	}
	bool PoweredUp()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41373], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool InCombat()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41375], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UObject.LinearColor FinalColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[12] = FinalColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41378], params.ptr, cast(void*)0);
	}
	void SetWalking(bool bNewIsWalking)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewIsWalking;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41385], params.ptr, cast(void*)0);
	}
	void ClearBodyMatColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41387], cast(void*)0, cast(void*)0);
	}
	void SetBodyMatColor(UObject.LinearColor NewBodyMatColor, float NewOverlayDuration)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = NewBodyMatColor;
		*cast(float*)&params[16] = NewOverlayDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41388], params.ptr, cast(void*)0);
	}
	void SetInvisible(bool bNowInvisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowInvisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41391], params.ptr, cast(void*)0);
	}
	void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41393], params.ptr, cast(void*)0);
	}
	void SetArmsSkin(MaterialInterface NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41397], params.ptr, cast(void*)0);
	}
	bool VerifyBodyMaterialInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41404], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool bForce)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		*cast(bool*)&params[4] = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41407], params.ptr, cast(void*)0);
	}
	void SetCharacterMeshInfo(SkeletalMesh SkelMesh, MaterialInterface HeadMaterial, MaterialInterface BodyMaterial)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = SkelMesh;
		*cast(MaterialInterface*)&params[4] = HeadMaterial;
		*cast(MaterialInterface*)&params[8] = BodyMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41437], params.ptr, cast(void*)0);
	}
	void SetPawnRBChannels(bool bRagdollMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRagdollMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41441], params.ptr, cast(void*)0);
	}
	void ResetCharPhysState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41443], cast(void*)0, cast(void*)0);
	}
	void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41445], cast(void*)0, cast(void*)0);
	}
	void SetFirstPersonArmsInfo(SkeletalMesh FirstPersonArmMesh, MaterialInterface ArmMaterial)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = FirstPersonArmMesh;
		*cast(MaterialInterface*)&params[4] = ArmMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41450], params.ptr, cast(void*)0);
	}
	void SetTeamColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41453], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41457], cast(void*)0, cast(void*)0);
	}
	void UpdateShadowSettings(bool bWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWantShadow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41460], params.ptr, cast(void*)0);
	}
	void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41464], cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41465], params.ptr, cast(void*)0);
	}
	void SetHandIKEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41473], params.ptr, cast(void*)0);
	}
	void SetAnimRateScale(float RateScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = RateScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41475], params.ptr, cast(void*)0);
	}
	void SetWeapAnimType(UTPawn.EWeapAnimType AnimType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPawn.EWeapAnimType*)params.ptr = AnimType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41477], params.ptr, cast(void*)0);
	}
	void LeaveABloodSplatterDecal(Vector HitLoc, Vector HitNorm)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNorm;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41480], params.ptr, cast(void*)0);
	}
	void PerformEmoteCommand(UDKPawn.EmoteInfo EInfo, int PlayerID)
	{
		ubyte params[56];
		params[] = 0;
		*cast(UDKPawn.EmoteInfo*)params.ptr = EInfo;
		*cast(int*)&params[52] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41494], params.ptr, cast(void*)0);
	}
	void DoPlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41503], params.ptr, cast(void*)0);
	}
	void ServerPlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41513], params.ptr, cast(void*)0);
	}
	void PlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41516], params.ptr, cast(void*)0);
	}
	void OnPlayAnim(UTSeqAct_PlayAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_PlayAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41519], params.ptr, cast(void*)0);
	}
	void SpawnDefaultController()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41542], cast(void*)0, cast(void*)0);
	}
	void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41553], cast(void*)0, cast(void*)0);
	}
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41554], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41557], params.ptr, cast(void*)0);
	}
	void gibbedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41560], params.ptr, cast(void*)0);
	}
	void JumpOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41564], cast(void*)0, cast(void*)0);
	}
	void StuckOnPawn(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41565], params.ptr, cast(void*)0);
	}
	void Falling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41567], cast(void*)0, cast(void*)0);
	}
	void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41568], params.ptr, cast(void*)0);
	}
	bool Died(Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41574], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41579], params.ptr, cast(void*)0);
	}
	bool StopFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41581], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool BotFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41583], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StopWeaponFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41588], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ubyte ChooseFireMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41593], params.ptr, cast(void*)0);
		return params[0];
	}
	bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41595], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41597], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlayVictoryAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41599], cast(void*)0, cast(void*)0);
	}
	void OnModifyHealth(SeqAct_ModifyHealth Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyHealth*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41601], params.ptr, cast(void*)0);
	}
	ScriptString GetScreenName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41603], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41605], params.ptr, cast(void*)0);
	}
	void UpdateEyeHeight(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41608], params.ptr, cast(void*)0);
	}
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41626], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41628], params.ptr, cast(void*)0);
	}
	void EndViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41632], params.ptr, cast(void*)0);
	}
	void SetWeaponVisibility(bool bWeaponVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWeaponVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41634], params.ptr, cast(void*)0);
	}
	void SetWeaponAttachmentVisibility(bool bAttachmentVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachmentVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41640], params.ptr, cast(void*)0);
	}
	void SetMeshVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41643], params.ptr, cast(void*)0);
	}
	void DeactivateSpawnProtection()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41646], cast(void*)0, cast(void*)0);
	}
	void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41650], params.ptr, cast(void*)0);
	}
	void SpawnTransEffect(int TeamNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41660], params.ptr, cast(void*)0);
	}
	void StartDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41663], params.ptr, cast(void*)0);
	}
	void StopDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41669], params.ptr, cast(void*)0);
	}
	void ClientRestart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41674], cast(void*)0, cast(void*)0);
	}
	int GetShieldStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41676], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int AbsorbDamage(int* Damage, int CurrentShieldStrength, float AbsorptionRate)
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
	int ShieldAbsorb(int Damage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41685], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void AdjustDamage(int* InDamage, Vector* Momentum, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = *InDamage;
		*cast(Vector*)&params[4] = *Momentum;
		*cast(Controller*)&params[16] = InstigatedBy;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41690], params.ptr, cast(void*)0);
		*InDamage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[4];
	}
	void DropFlag(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41699], params.ptr, cast(void*)0);
	}
	void EnableInventoryPickup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41703], cast(void*)0, cast(void*)0);
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41704], params.ptr, cast(void*)0);
	}
	bool GiveHealth(int HealAmount, int HealMax)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(int*)&params[4] = HealMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41712], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptString GetDebugName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41716], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void PlayFootStepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41718], params.ptr, cast(void*)0);
	}
	void ActuallyPlayFootstepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41722], params.ptr, cast(void*)0);
	}
	ScriptName GetMaterialBelowFeet()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41728], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void PlayLandingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41738], cast(void*)0, cast(void*)0);
	}
	void PlayJumpingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41743], cast(void*)0, cast(void*)0);
	}
	bool ShouldGib(ScriptClass pUTDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pUTDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41747], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SpawnHeadGib(ScriptClass pUTDamageType, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pUTDamageType;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41752], params.ptr, cast(void*)0);
	}
	UTGib SpawnGib(ScriptClass GibClass, ScriptName BoneName, ScriptClass pUTDamageType, Vector HitLocation, bool bSpinGib)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GibClass;
		*cast(ScriptName*)&params[4] = BoneName;
		*cast(ScriptClass*)&params[12] = pUTDamageType;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(bool*)&params[28] = bSpinGib;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41772], params.ptr, cast(void*)0);
		return *cast(UTGib*)&params[32];
	}
	void SpawnGibs(ScriptClass pUTDamageType, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pUTDamageType;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41789], params.ptr, cast(void*)0);
	}
	void TurnOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41802], cast(void*)0, cast(void*)0);
	}
	void PlayDying(ScriptClass pDamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41803], params.ptr, cast(void*)0);
	}
	void DoingDeathAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41835], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41844], cast(void*)0, cast(void*)0);
	}
	void AddDefaultInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41847], cast(void*)0, cast(void*)0);
	}
	bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
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
	void SetThirdPersonCamera(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41854], params.ptr, cast(void*)0);
	}
	void FindGoodEndView(PlayerController InPC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = InPC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41857], params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	bool TryNewCamRot(UTPlayerController PC, Rotator ViewRotation, float* CamDist)
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
	void SetHeroCam(Rotator* out_CamRot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41875], params.ptr, cast(void*)0);
		*out_CamRot = *cast(Rotator*)params.ptr;
	}
	bool CalcThirdPersonCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
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
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41893], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41896], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Vector BotDodge(Vector Dir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41910], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	bool PerformDodge(Actor.EDoubleClickDir DoubleClickMove, Vector Dir, Vector Cross)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		*cast(Vector*)&params[4] = Dir;
		*cast(Vector*)&params[16] = Cross;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41916], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void DoDoubleJump(bool bUpdating)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41925], params.ptr, cast(void*)0);
	}
	void Gasp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41928], cast(void*)0, cast(void*)0);
	}
	void StartFlying()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41929], cast(void*)0, cast(void*)0);
	}
	void StopFlying()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41930], cast(void*)0, cast(void*)0);
	}
	bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41931], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41935], params.ptr, cast(void*)0);
	}
	void JumpOutOfWater(Vector JumpDir)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = JumpDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41941], params.ptr, cast(void*)0);
	}
	bool CanMultiJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41943], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayDyingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41945], cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
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
	void SetPawnAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41956], params.ptr, cast(void*)0);
	}
	SoundCue GetPawnAmbientSound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41958], params.ptr, cast(void*)0);
		return *cast(SoundCue*)params.ptr;
	}
	void SetWeaponAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41960], params.ptr, cast(void*)0);
	}
	SoundCue GetWeaponAmbientSound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41962], params.ptr, cast(void*)0);
		return *cast(SoundCue*)params.ptr;
	}
	void SetOverlayMaterial(MaterialInterface NewOverlay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewOverlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41964], params.ptr, cast(void*)0);
	}
	MaterialInterface GetShieldMaterialInstance(bool bTeamGame)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bTeamGame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41967], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	MaterialInterface GetOverlayMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41972], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)params.ptr;
	}
	void SetWeaponOverlayFlag(ubyte FlagToSet)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FlagToSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41974], params.ptr, cast(void*)0);
	}
	void ClearWeaponOverlayFlag(ubyte FlagToClear)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FlagToClear;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41976], params.ptr, cast(void*)0);
	}
	void ApplyWeaponOverlayFlags(ubyte NewFlags)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewFlags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41978], params.ptr, cast(void*)0);
	}
	void StartFeignDeathRecoveryAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41982], cast(void*)0, cast(void*)0);
	}
	void FeignDeathDelayTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41984], cast(void*)0, cast(void*)0);
	}
	void PlayFeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41987], cast(void*)0, cast(void*)0);
	}
	bool SetFeignEndLocation(Vector HitLocation, Vector FeignLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = FeignLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42001], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool CheckValidLocation(Vector FeignLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FeignLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42006], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void ServerFeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42012], cast(void*)0, cast(void*)0);
	}
	void FeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42013], cast(void*)0, cast(void*)0);
	}
	void ForceRagdoll()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42014], cast(void*)0, cast(void*)0);
	}
	void FiringModeUpdated(Weapon InWeapon, ubyte InFiringMode, bool bViaReplication)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42015], params.ptr, cast(void*)0);
	}
	void SetBigHead()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42019], cast(void*)0, cast(void*)0);
	}
	void FireRateChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42021], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42022], params.ptr, cast(void*)0);
	}
	void SetHeadScale(float NewScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42026], params.ptr, cast(void*)0);
	}
	void SetPuttingDownWeapon(bool bNowPuttingDownWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPuttingDownWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42029], params.ptr, cast(void*)0);
	}
	bool GetPuttingDownWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42031], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42033], params.ptr, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42045], params.ptr, cast(void*)0);
	}
	void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42050], params.ptr, cast(void*)0);
	}
	void WeaponChanged(UTWeapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42053], params.ptr, cast(void*)0);
	}
	void WeaponAttachmentChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42056], cast(void*)0, cast(void*)0);
	}
	void PlayHit(float Damage, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Vector Momentum, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42057], params.ptr, cast(void*)0);
	}
	void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42069], cast(void*)0, cast(void*)0);
	}
	void TakeHitBlendedOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42080], cast(void*)0, cast(void*)0);
	}
	void ServerHoverboard()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42081], cast(void*)0, cast(void*)0);
	}
	void OnUseHoverboard(UTSeqAct_UseHoverboard Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_UseHoverboard*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42093], params.ptr, cast(void*)0);
	}
	void SwitchWeapon(ubyte NewGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42097], params.ptr, cast(void*)0);
	}
	void TakeDrowningDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42099], cast(void*)0, cast(void*)0);
	}
	bool IsLocationOnHead(Actor.ImpactInfo* Impact, float AdditionalScale)
	{
		ubyte params[88];
		params[] = 0;
		*cast(Actor.ImpactInfo*)params.ptr = *Impact;
		*cast(float*)&params[80] = AdditionalScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42100], params.ptr, cast(void*)0);
		*Impact = *cast(Actor.ImpactInfo*)params.ptr;
		return *cast(bool*)&params[84];
	}
	void ModifyRotForDebugFreeCam(Rotator* out_CamRot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42108], params.ptr, cast(void*)0);
		*out_CamRot = *cast(Rotator*)params.ptr;
	}
	void AdjustCameraScale(bool bMoveCameraIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveCameraIn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42112], params.ptr, cast(void*)0);
	}
	Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42116], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42119], cast(void*)0, cast(void*)0);
	}
	void SetOverlayVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42121], params.ptr, cast(void*)0);
	}
	void TakeFallingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42123], cast(void*)0, cast(void*)0);
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, Actor.CollisionImpactData* RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42126], params.ptr, cast(void*)0);
		*RigidCollisionData = *cast(Actor.CollisionImpactData*)&params[8];
	}
	void OnRanOver(SVehicle pVehicle, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* RunOverComponent, int WheelIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SVehicle*)params.ptr = pVehicle;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = RunOverComponent;
		*cast(int*)&params[8] = WheelIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42131], params.ptr, cast(void*)0);
	}
	void StuckFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42136], cast(void*)0, cast(void*)0);
	}
	void OnExitVehicle(UTSeqAct_ExitVehicle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_ExitVehicle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42137], params.ptr, cast(void*)0);
	}
	void OnInfiniteAmmo(UTSeqAct_InfiniteAmmo Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_InfiniteAmmo*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42139], params.ptr, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42144], params.ptr, cast(void*)0);
	}
	bool NeedToTurn(Vector targ)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = targ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42147], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	ScriptClass GetFamilyInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42273], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void PostTeleport(Teleporter OutTeleporter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Teleporter*)params.ptr = OutTeleporter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42276], params.ptr, cast(void*)0);
	}
	void PostBigTeleport()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42278], cast(void*)0, cast(void*)0);
	}
}
