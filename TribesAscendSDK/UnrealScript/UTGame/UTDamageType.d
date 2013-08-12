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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDamageType")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDeathCameraEffectInstigator;
			ScriptFunction mGetHitEffectDuration;
			ScriptFunction mShouldGib;
			ScriptFunction mGetDeathCameraEffectVictim;
			ScriptFunction mDeathMessage;
			ScriptFunction mSuicideMessage;
			ScriptFunction mSpawnHitEffect;
			ScriptFunction mIncrementKills;
			ScriptFunction mIncrementDeaths;
			ScriptFunction mIncrementSuicides;
			ScriptFunction mGetStatsName;
			ScriptFunction mScoreKill;
			ScriptFunction mPawnTornOff;
			ScriptFunction mSpawnGibEffects;
			ScriptFunction mDoCustomDamageEffects;
			ScriptFunction mCreateDeathSkeleton;
			ScriptFunction mBoneBreaker;
			ScriptFunction mCreateDeathGoreChunks;
			ScriptFunction mSpawnExtraGibEffects;
			ScriptFunction mDrawKillIcon;
			ScriptFunction mCalcDeathCamera;
		}
		public @property static final
		{
			ScriptFunction GetDeathCameraEffectInstigator() { return mGetDeathCameraEffectInstigator ? mGetDeathCameraEffectInstigator : (mGetDeathCameraEffectInstigator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.GetDeathCameraEffectInstigator")); }
			ScriptFunction GetHitEffectDuration() { return mGetHitEffectDuration ? mGetHitEffectDuration : (mGetHitEffectDuration = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.GetHitEffectDuration")); }
			ScriptFunction ShouldGib() { return mShouldGib ? mShouldGib : (mShouldGib = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.ShouldGib")); }
			ScriptFunction GetDeathCameraEffectVictim() { return mGetDeathCameraEffectVictim ? mGetDeathCameraEffectVictim : (mGetDeathCameraEffectVictim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.GetDeathCameraEffectVictim")); }
			ScriptFunction DeathMessage() { return mDeathMessage ? mDeathMessage : (mDeathMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.DeathMessage")); }
			ScriptFunction SuicideMessage() { return mSuicideMessage ? mSuicideMessage : (mSuicideMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.SuicideMessage")); }
			ScriptFunction SpawnHitEffect() { return mSpawnHitEffect ? mSpawnHitEffect : (mSpawnHitEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.SpawnHitEffect")); }
			ScriptFunction IncrementKills() { return mIncrementKills ? mIncrementKills : (mIncrementKills = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.IncrementKills")); }
			ScriptFunction IncrementDeaths() { return mIncrementDeaths ? mIncrementDeaths : (mIncrementDeaths = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.IncrementDeaths")); }
			ScriptFunction IncrementSuicides() { return mIncrementSuicides ? mIncrementSuicides : (mIncrementSuicides = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.IncrementSuicides")); }
			ScriptFunction GetStatsName() { return mGetStatsName ? mGetStatsName : (mGetStatsName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.GetStatsName")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.ScoreKill")); }
			ScriptFunction PawnTornOff() { return mPawnTornOff ? mPawnTornOff : (mPawnTornOff = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.PawnTornOff")); }
			ScriptFunction SpawnGibEffects() { return mSpawnGibEffects ? mSpawnGibEffects : (mSpawnGibEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.SpawnGibEffects")); }
			ScriptFunction DoCustomDamageEffects() { return mDoCustomDamageEffects ? mDoCustomDamageEffects : (mDoCustomDamageEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.DoCustomDamageEffects")); }
			ScriptFunction CreateDeathSkeleton() { return mCreateDeathSkeleton ? mCreateDeathSkeleton : (mCreateDeathSkeleton = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.CreateDeathSkeleton")); }
			ScriptFunction BoneBreaker() { return mBoneBreaker ? mBoneBreaker : (mBoneBreaker = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.BoneBreaker")); }
			ScriptFunction CreateDeathGoreChunks() { return mCreateDeathGoreChunks ? mCreateDeathGoreChunks : (mCreateDeathGoreChunks = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.CreateDeathGoreChunks")); }
			ScriptFunction SpawnExtraGibEffects() { return mSpawnExtraGibEffects ? mSpawnExtraGibEffects : (mSpawnExtraGibEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.SpawnExtraGibEffects")); }
			ScriptFunction DrawKillIcon() { return mDrawKillIcon ? mDrawKillIcon : (mDrawKillIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.DrawKillIcon")); }
			ScriptFunction CalcDeathCamera() { return mCalcDeathCamera ? mCalcDeathCamera : (mCalcDeathCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDamageType.CalcDeathCamera")); }
		}
	}
	@property final
	{
		auto ref
		{
			CameraAnim DamageCameraAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 192); }
			ScriptClass DamageWeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 152); }
			float GibPerterbation() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			ScriptName DeathAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 172); }
			float DeathAnimRate() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float MotorDecayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float StopAnimAfterDamageInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float DamageOverlayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float XRayEffectTime() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			UObject.LinearColor DamageBodyMatColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 100); }
			float PhysicsTakeHitMomentumThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			UObject.LinearColor HitEffectColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 248); }
			ScriptString MaleSuicide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 288); }
			ScriptString FemaleSuicide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 276); }
			ScriptString DeathString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
			int CustomTauntIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
			ScriptName RewardEvent() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
			int RewardAnnouncementSwitch() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
			ScriptClass RewardAnnouncementClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 228); }
			int RewardCount() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
			ScriptName SuicideStatsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 216); }
			ScriptName DeathStatsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 208); }
			ScriptName KillStatsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 200); }
			float NodeDamageScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
			ScriptClass DeathCameraEffectInstigator() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 168); }
			ScriptClass DeathCameraEffectVictim() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 164); }
			ParticleSystem GibTrail() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 160); }
			int DamageWeaponFireMode() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			int AlwaysGibDamageThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
			int MinAccumulateDamageThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
			int GibThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			float DeathOverlayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bLocationalHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
		bool bLocationalHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
		bool bDirectDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10) != 0; }
		bool bDirectDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10; } return val; }
		bool bHeadGibCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x40000) != 0; }
		bool bHeadGibCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x40000; } return val; }
		bool bUseDamageBasedDeathEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2000) != 0; }
		bool bUseDamageBasedDeathEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2000; } return val; }
		bool bAnimateHipsForDeathAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8000) != 0; }
		bool bAnimateHipsForDeathAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8000; } return val; }
		bool bSeversHead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x20) != 0; }
		bool bSeversHead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x20; } return val; }
		bool bCausesBloodSplatterDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x80000) != 0; }
		bool bCausesBloodSplatterDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x80000; } return val; }
		bool bCausesBlood() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bCausesBlood(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
		bool bSpecialDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4000) != 0; }
		bool bSpecialDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4000; } return val; }
		bool bThrowRagdoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x100) != 0; }
		bool bThrowRagdoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x100; } return val; }
		bool bOverrideHitEffectColor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x20000) != 0; }
		bool bOverrideHitEffectColor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x20000; } return val; }
		bool bDontHurtInstigator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x100000) != 0; }
		bool bDontHurtInstigator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x100000; } return val; }
		bool bComplainFriendlyFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10000) != 0; }
		bool bComplainFriendlyFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10000; } return val; }
		bool bSelfDestructDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1000) != 0; }
		bool bSelfDestructDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1000; } return val; }
		bool bVehicleHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x800) != 0; }
		bool bVehicleHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x800; } return val; }
		bool bBulletHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x400) != 0; }
		bool bBulletHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x400; } return val; }
		bool bLeaveBodyEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x200) != 0; }
		bool bLeaveBodyEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x200; } return val; }
		bool bUseTearOffMomentum() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x80) != 0; }
		bool bUseTearOffMomentum(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x80; } return val; }
		bool bCauseConvulsions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x40) != 0; }
		bool bCauseConvulsions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x40; } return val; }
		bool bNeverGibs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
		bool bNeverGibs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
		bool bAlwaysGibs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
		bool bAlwaysGibs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
	}
final:
	static ScriptClass GetDeathCameraEffectInstigator(UTPawn UTP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		StaticClass.ProcessEvent(Functions.GetDeathCameraEffectInstigator, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	static float GetHitEffectDuration(Pawn P, float Damage)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		StaticClass.ProcessEvent(Functions.GetHitEffectDuration, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static bool ShouldGib(UTPawn DeadPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = DeadPawn;
		StaticClass.ProcessEvent(Functions.ShouldGib, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	static ScriptClass GetDeathCameraEffectVictim(UTPawn UTP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		StaticClass.ProcessEvent(Functions.GetDeathCameraEffectVictim, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	static ScriptString DeathMessage(PlayerReplicationInfo Killer, PlayerReplicationInfo Victim)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Killer;
		*cast(PlayerReplicationInfo*)&params[4] = Victim;
		StaticClass.ProcessEvent(Functions.DeathMessage, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	static ScriptString SuicideMessage(PlayerReplicationInfo Victim)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Victim;
		StaticClass.ProcessEvent(Functions.SuicideMessage, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static void SpawnHitEffect(Pawn P, float Damage, Vector Momentum, ScriptName BoneName, Vector HitLocation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		*cast(Vector*)&params[8] = Momentum;
		*cast(ScriptName*)&params[20] = BoneName;
		*cast(Vector*)&params[28] = HitLocation;
		StaticClass.ProcessEvent(Functions.SpawnHitEffect, params.ptr, cast(void*)0);
	}
	static int IncrementKills(UTPlayerReplicationInfo KillerPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KillerPRI;
		StaticClass.ProcessEvent(Functions.IncrementKills, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static void IncrementDeaths(UTPlayerReplicationInfo KilledPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KilledPRI;
		StaticClass.ProcessEvent(Functions.IncrementDeaths, params.ptr, cast(void*)0);
	}
	static void IncrementSuicides(UTPlayerReplicationInfo KilledPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KilledPRI;
		StaticClass.ProcessEvent(Functions.IncrementSuicides, params.ptr, cast(void*)0);
	}
	static ScriptName GetStatsName(ScriptName StatType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StatType;
		StaticClass.ProcessEvent(Functions.GetStatsName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	static void ScoreKill(UTPlayerReplicationInfo KillerPRI, UTPlayerReplicationInfo KilledPRI, Pawn KilledPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KillerPRI;
		*cast(UTPlayerReplicationInfo*)&params[4] = KilledPRI;
		*cast(Pawn*)&params[8] = KilledPawn;
		StaticClass.ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	static void PawnTornOff(UTPawn DeadPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = DeadPawn;
		StaticClass.ProcessEvent(Functions.PawnTornOff, params.ptr, cast(void*)0);
	}
	static void SpawnGibEffects(UTGib Gib)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGib*)params.ptr = Gib;
		StaticClass.ProcessEvent(Functions.SpawnGibEffects, params.ptr, cast(void*)0);
	}
	static void DoCustomDamageEffects(UTPawn ThePawn, ScriptClass TheDamageType, Actor.TraceHitInfo* HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = *HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		StaticClass.ProcessEvent(Functions.DoCustomDamageEffects, params.ptr, cast(void*)0);
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[8];
	}
	static void CreateDeathSkeleton(UTPawn ThePawn, ScriptClass TheDamageType, Actor.TraceHitInfo* HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = *HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		StaticClass.ProcessEvent(Functions.CreateDeathSkeleton, params.ptr, cast(void*)0);
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[8];
	}
	static void BoneBreaker(UTPawn ThePawn, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* TheMesh, Vector Impulse, Vector HitLocation, ScriptName BoneName)
	{
		ubyte params[40];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = TheMesh;
		*cast(Vector*)&params[8] = Impulse;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptName*)&params[32] = BoneName;
		StaticClass.ProcessEvent(Functions.BoneBreaker, params.ptr, cast(void*)0);
	}
	static void CreateDeathGoreChunks(UTPawn ThePawn, ScriptClass TheDamageType, Actor.TraceHitInfo* HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = *HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		StaticClass.ProcessEvent(Functions.CreateDeathGoreChunks, params.ptr, cast(void*)0);
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[8];
	}
	static void SpawnExtraGibEffects(UTGib TheGib)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGib*)params.ptr = TheGib;
		StaticClass.ProcessEvent(Functions.SpawnExtraGibEffects, params.ptr, cast(void*)0);
	}
	static void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(float*)&params[12] = HUDScaleX;
		*cast(float*)&params[16] = HUDScaleY;
		StaticClass.ProcessEvent(Functions.DrawKillIcon, params.ptr, cast(void*)0);
	}
	static void CalcDeathCamera(UTPawn P, float DeltaTime, Vector* CameraLocation, Rotator* CameraRotation, float* CameraFOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(UTPawn*)params.ptr = P;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Vector*)&params[8] = *CameraLocation;
		*cast(Rotator*)&params[20] = *CameraRotation;
		*cast(float*)&params[32] = *CameraFOV;
		StaticClass.ProcessEvent(Functions.CalcDeathCamera, params.ptr, cast(void*)0);
		*CameraLocation = *cast(Vector*)&params[8];
		*CameraRotation = *cast(Rotator*)&params[20];
		*CameraFOV = *cast(float*)&params[32];
	}
}
