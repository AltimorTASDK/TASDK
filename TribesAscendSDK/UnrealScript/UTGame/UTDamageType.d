module UnrealScript.UTGame.UTDamageType;

import ScriptClasses;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTGib;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.DamageType;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface UTDamageType : DamageType
{
	public @property final auto ref CameraAnim DamageCameraAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bLocationalHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
	public @property final bool bLocationalHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
	public @property final auto ref ScriptClass DamageWeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 152); }
	public @property final bool bDirectDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10) != 0; }
	public @property final bool bDirectDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10; } return val; }
	public @property final bool bHeadGibCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x40000) != 0; }
	public @property final bool bHeadGibCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x40000; } return val; }
	public @property final auto ref float GibPerterbation() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final bool bUseDamageBasedDeathEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2000) != 0; }
	public @property final bool bUseDamageBasedDeathEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2000; } return val; }
	public @property final auto ref ScriptName DeathAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 172); }
	public @property final bool bAnimateHipsForDeathAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8000) != 0; }
	public @property final bool bAnimateHipsForDeathAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8000; } return val; }
	public @property final auto ref float DeathAnimRate() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final bool bSeversHead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x20) != 0; }
	public @property final bool bSeversHead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x20; } return val; }
	public @property final auto ref float MotorDecayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float StopAnimAfterDamageInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float DamageOverlayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float XRayEffectTime() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.LinearColor DamageBodyMatColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bCausesBloodSplatterDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x80000) != 0; }
	public @property final bool bCausesBloodSplatterDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x80000; } return val; }
	public @property final bool bCausesBlood() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bCausesBlood(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final auto ref float PhysicsTakeHitMomentumThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final bool bSpecialDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4000) != 0; }
	public @property final bool bSpecialDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4000; } return val; }
	public @property final bool bThrowRagdoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x100) != 0; }
	public @property final bool bThrowRagdoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x100; } return val; }
	public @property final bool bOverrideHitEffectColor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x20000) != 0; }
	public @property final bool bOverrideHitEffectColor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x20000; } return val; }
	public @property final auto ref UObject.LinearColor HitEffectColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref ScriptString MaleSuicide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref ScriptString FemaleSuicide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref ScriptString DeathString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref int CustomTauntIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptName RewardEvent() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref int RewardAnnouncementSwitch() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptClass RewardAnnouncementClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref int RewardCount() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref ScriptName SuicideStatsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptName DeathStatsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref ScriptName KillStatsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float NodeDamageScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ScriptClass DeathCameraEffectInstigator() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptClass DeathCameraEffectVictim() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ParticleSystem GibTrail() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int DamageWeaponFireMode() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int AlwaysGibDamageThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int MinAccumulateDamageThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int GibThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final bool bDontHurtInstigator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x100000) != 0; }
	public @property final bool bDontHurtInstigator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x100000; } return val; }
	public @property final bool bComplainFriendlyFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10000) != 0; }
	public @property final bool bComplainFriendlyFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10000; } return val; }
	public @property final bool bSelfDestructDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1000) != 0; }
	public @property final bool bSelfDestructDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1000; } return val; }
	public @property final bool bVehicleHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x800) != 0; }
	public @property final bool bVehicleHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x800; } return val; }
	public @property final bool bBulletHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x400) != 0; }
	public @property final bool bBulletHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x400; } return val; }
	public @property final bool bLeaveBodyEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x200) != 0; }
	public @property final bool bLeaveBodyEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x200; } return val; }
	public @property final bool bUseTearOffMomentum() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x80) != 0; }
	public @property final bool bUseTearOffMomentum(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x80; } return val; }
	public @property final bool bCauseConvulsions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x40) != 0; }
	public @property final bool bCauseConvulsions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x40; } return val; }
	public @property final bool bNeverGibs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
	public @property final bool bNeverGibs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
	public @property final bool bAlwaysGibs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
	public @property final bool bAlwaysGibs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
	public @property final auto ref float DeathOverlayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	final ScriptClass GetDeathCameraEffectInstigator(UTPawn UTP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39477], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	final float GetHitEffectDuration(Pawn P, float Damage)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39820], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final bool ShouldGib(UTPawn DeadPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = DeadPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41750], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptClass GetDeathCameraEffectVictim(UTPawn UTP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41770], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	final ScriptString DeathMessage(PlayerReplicationInfo Killer, PlayerReplicationInfo Victim)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Killer;
		*cast(PlayerReplicationInfo*)&params[4] = Victim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46779], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final ScriptString SuicideMessage(PlayerReplicationInfo Victim)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Victim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46783], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void SpawnHitEffect(Pawn P, float Damage, Vector Momentum, ScriptName BoneName, Vector HitLocation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		*cast(Vector*)&params[8] = Momentum;
		*cast(ScriptName*)&params[20] = BoneName;
		*cast(Vector*)&params[28] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46786], params.ptr, cast(void*)0);
	}
	final int IncrementKills(UTPlayerReplicationInfo KillerPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KillerPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46794], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void IncrementDeaths(UTPlayerReplicationInfo KilledPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KilledPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46798], params.ptr, cast(void*)0);
	}
	final void IncrementSuicides(UTPlayerReplicationInfo KilledPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KilledPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46800], params.ptr, cast(void*)0);
	}
	final ScriptName GetStatsName(ScriptName StatType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StatType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46802], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final void ScoreKill(UTPlayerReplicationInfo KillerPRI, UTPlayerReplicationInfo KilledPRI, Pawn KilledPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KillerPRI;
		*cast(UTPlayerReplicationInfo*)&params[4] = KilledPRI;
		*cast(Pawn*)&params[8] = KilledPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46805], params.ptr, cast(void*)0);
	}
	final void PawnTornOff(UTPawn DeadPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = DeadPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46809], params.ptr, cast(void*)0);
	}
	final void SpawnGibEffects(UTGib Gib)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGib*)params.ptr = Gib;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46811], params.ptr, cast(void*)0);
	}
	final void DoCustomDamageEffects(UTPawn ThePawn, ScriptClass TheDamageType, Actor.TraceHitInfo* HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = *HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46815], params.ptr, cast(void*)0);
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[8];
	}
	final void CreateDeathSkeleton(UTPawn ThePawn, ScriptClass TheDamageType, Actor.TraceHitInfo* HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = *HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46820], params.ptr, cast(void*)0);
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[8];
	}
	final void BoneBreaker(UTPawn ThePawn, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* TheMesh, Vector Impulse, Vector HitLocation, ScriptName BoneName)
	{
		ubyte params[40];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = TheMesh;
		*cast(Vector*)&params[8] = Impulse;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptName*)&params[32] = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46837], params.ptr, cast(void*)0);
	}
	final void CreateDeathGoreChunks(UTPawn ThePawn, ScriptClass TheDamageType, Actor.TraceHitInfo* HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = *HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46846], params.ptr, cast(void*)0);
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[8];
	}
	final void SpawnExtraGibEffects(UTGib TheGib)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGib*)params.ptr = TheGib;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46855], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46857], params.ptr, cast(void*)0);
	}
	final void CalcDeathCamera(UTPawn P, float DeltaTime, Vector* CameraLocation, Rotator* CameraRotation, float* CameraFOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(UTPawn*)params.ptr = P;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Vector*)&params[8] = *CameraLocation;
		*cast(Rotator*)&params[20] = *CameraRotation;
		*cast(float*)&params[32] = *CameraFOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46863], params.ptr, cast(void*)0);
		*CameraLocation = *cast(Vector*)&params[8];
		*CameraRotation = *cast(Rotator*)&params[20];
		*CameraFOV = *cast(float*)&params[32];
	}
}
