module UnrealScript.UTGame.UTDamageType;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDamageType")); }
	private static __gshared UTDamageType mDefaultProperties;
	@property final static UTDamageType DefaultProperties() { mixin(MGDPC("UTDamageType", "UTDamageType UTGame.Default__UTDamageType")); }
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
			ScriptFunction GetDeathCameraEffectInstigator() { mixin(MGF("mGetDeathCameraEffectInstigator", "Function UTGame.UTDamageType.GetDeathCameraEffectInstigator")); }
			ScriptFunction GetHitEffectDuration() { mixin(MGF("mGetHitEffectDuration", "Function UTGame.UTDamageType.GetHitEffectDuration")); }
			ScriptFunction ShouldGib() { mixin(MGF("mShouldGib", "Function UTGame.UTDamageType.ShouldGib")); }
			ScriptFunction GetDeathCameraEffectVictim() { mixin(MGF("mGetDeathCameraEffectVictim", "Function UTGame.UTDamageType.GetDeathCameraEffectVictim")); }
			ScriptFunction DeathMessage() { mixin(MGF("mDeathMessage", "Function UTGame.UTDamageType.DeathMessage")); }
			ScriptFunction SuicideMessage() { mixin(MGF("mSuicideMessage", "Function UTGame.UTDamageType.SuicideMessage")); }
			ScriptFunction SpawnHitEffect() { mixin(MGF("mSpawnHitEffect", "Function UTGame.UTDamageType.SpawnHitEffect")); }
			ScriptFunction IncrementKills() { mixin(MGF("mIncrementKills", "Function UTGame.UTDamageType.IncrementKills")); }
			ScriptFunction IncrementDeaths() { mixin(MGF("mIncrementDeaths", "Function UTGame.UTDamageType.IncrementDeaths")); }
			ScriptFunction IncrementSuicides() { mixin(MGF("mIncrementSuicides", "Function UTGame.UTDamageType.IncrementSuicides")); }
			ScriptFunction GetStatsName() { mixin(MGF("mGetStatsName", "Function UTGame.UTDamageType.GetStatsName")); }
			ScriptFunction ScoreKill() { mixin(MGF("mScoreKill", "Function UTGame.UTDamageType.ScoreKill")); }
			ScriptFunction PawnTornOff() { mixin(MGF("mPawnTornOff", "Function UTGame.UTDamageType.PawnTornOff")); }
			ScriptFunction SpawnGibEffects() { mixin(MGF("mSpawnGibEffects", "Function UTGame.UTDamageType.SpawnGibEffects")); }
			ScriptFunction DoCustomDamageEffects() { mixin(MGF("mDoCustomDamageEffects", "Function UTGame.UTDamageType.DoCustomDamageEffects")); }
			ScriptFunction CreateDeathSkeleton() { mixin(MGF("mCreateDeathSkeleton", "Function UTGame.UTDamageType.CreateDeathSkeleton")); }
			ScriptFunction BoneBreaker() { mixin(MGF("mBoneBreaker", "Function UTGame.UTDamageType.BoneBreaker")); }
			ScriptFunction CreateDeathGoreChunks() { mixin(MGF("mCreateDeathGoreChunks", "Function UTGame.UTDamageType.CreateDeathGoreChunks")); }
			ScriptFunction SpawnExtraGibEffects() { mixin(MGF("mSpawnExtraGibEffects", "Function UTGame.UTDamageType.SpawnExtraGibEffects")); }
			ScriptFunction DrawKillIcon() { mixin(MGF("mDrawKillIcon", "Function UTGame.UTDamageType.DrawKillIcon")); }
			ScriptFunction CalcDeathCamera() { mixin(MGF("mCalcDeathCamera", "Function UTGame.UTDamageType.CalcDeathCamera")); }
		}
	}
	@property final
	{
		auto ref
		{
			CameraAnim DamageCameraAnim() { mixin(MGPC("CameraAnim", 192)); }
			ScriptClass DamageWeaponClass() { mixin(MGPC("ScriptClass", 152)); }
			float GibPerterbation() { mixin(MGPC("float", 132)); }
			ScriptName DeathAnim() { mixin(MGPC("ScriptName", 172)); }
			float DeathAnimRate() { mixin(MGPC("float", 180)); }
			float MotorDecayTime() { mixin(MGPC("float", 184)); }
			float StopAnimAfterDamageInterval() { mixin(MGPC("float", 188)); }
			float DamageOverlayTime() { mixin(MGPC("float", 116)); }
			float XRayEffectTime() { mixin(MGPC("float", 124)); }
			UObject.LinearColor DamageBodyMatColor() { mixin(MGPC("UObject.LinearColor", 100)); }
			float PhysicsTakeHitMomentumThreshold() { mixin(MGPC("float", 148)); }
			UObject.LinearColor HitEffectColor() { mixin(MGPC("UObject.LinearColor", 248)); }
			ScriptString MaleSuicide() { mixin(MGPC("ScriptString", 288)); }
			ScriptString FemaleSuicide() { mixin(MGPC("ScriptString", 276)); }
			ScriptString DeathString() { mixin(MGPC("ScriptString", 264)); }
			int CustomTauntIndex() { mixin(MGPC("int", 244)); }
			ScriptName RewardEvent() { mixin(MGPC("ScriptName", 236)); }
			int RewardAnnouncementSwitch() { mixin(MGPC("int", 232)); }
			ScriptClass RewardAnnouncementClass() { mixin(MGPC("ScriptClass", 228)); }
			int RewardCount() { mixin(MGPC("int", 224)); }
			ScriptName SuicideStatsName() { mixin(MGPC("ScriptName", 216)); }
			ScriptName DeathStatsName() { mixin(MGPC("ScriptName", 208)); }
			ScriptName KillStatsName() { mixin(MGPC("ScriptName", 200)); }
			float NodeDamageScaling() { mixin(MGPC("float", 196)); }
			ScriptClass DeathCameraEffectInstigator() { mixin(MGPC("ScriptClass", 168)); }
			ScriptClass DeathCameraEffectVictim() { mixin(MGPC("ScriptClass", 164)); }
			ParticleSystem GibTrail() { mixin(MGPC("ParticleSystem", 160)); }
			int DamageWeaponFireMode() { mixin(MGPC("int", 156)); }
			int AlwaysGibDamageThreshold() { mixin(MGPC("int", 144)); }
			int MinAccumulateDamageThreshold() { mixin(MGPC("int", 140)); }
			int GibThreshold() { mixin(MGPC("int", 136)); }
			float DeathOverlayTime() { mixin(MGPC("float", 120)); }
		}
		bool bLocationalHit() { mixin(MGBPC(128, 0x2)); }
		bool bLocationalHit(bool val) { mixin(MSBPC(128, 0x2)); }
		bool bDirectDamage() { mixin(MGBPC(128, 0x10)); }
		bool bDirectDamage(bool val) { mixin(MSBPC(128, 0x10)); }
		bool bHeadGibCamera() { mixin(MGBPC(128, 0x40000)); }
		bool bHeadGibCamera(bool val) { mixin(MSBPC(128, 0x40000)); }
		bool bUseDamageBasedDeathEffects() { mixin(MGBPC(128, 0x2000)); }
		bool bUseDamageBasedDeathEffects(bool val) { mixin(MSBPC(128, 0x2000)); }
		bool bAnimateHipsForDeathAnim() { mixin(MGBPC(128, 0x8000)); }
		bool bAnimateHipsForDeathAnim(bool val) { mixin(MSBPC(128, 0x8000)); }
		bool bSeversHead() { mixin(MGBPC(128, 0x20)); }
		bool bSeversHead(bool val) { mixin(MSBPC(128, 0x20)); }
		bool bCausesBloodSplatterDecals() { mixin(MGBPC(128, 0x80000)); }
		bool bCausesBloodSplatterDecals(bool val) { mixin(MSBPC(128, 0x80000)); }
		bool bCausesBlood() { mixin(MGBPC(128, 0x1)); }
		bool bCausesBlood(bool val) { mixin(MSBPC(128, 0x1)); }
		bool bSpecialDeathCamera() { mixin(MGBPC(128, 0x4000)); }
		bool bSpecialDeathCamera(bool val) { mixin(MSBPC(128, 0x4000)); }
		bool bThrowRagdoll() { mixin(MGBPC(128, 0x100)); }
		bool bThrowRagdoll(bool val) { mixin(MSBPC(128, 0x100)); }
		bool bOverrideHitEffectColor() { mixin(MGBPC(128, 0x20000)); }
		bool bOverrideHitEffectColor(bool val) { mixin(MSBPC(128, 0x20000)); }
		bool bDontHurtInstigator() { mixin(MGBPC(128, 0x100000)); }
		bool bDontHurtInstigator(bool val) { mixin(MSBPC(128, 0x100000)); }
		bool bComplainFriendlyFire() { mixin(MGBPC(128, 0x10000)); }
		bool bComplainFriendlyFire(bool val) { mixin(MSBPC(128, 0x10000)); }
		bool bSelfDestructDamage() { mixin(MGBPC(128, 0x1000)); }
		bool bSelfDestructDamage(bool val) { mixin(MSBPC(128, 0x1000)); }
		bool bVehicleHit() { mixin(MGBPC(128, 0x800)); }
		bool bVehicleHit(bool val) { mixin(MSBPC(128, 0x800)); }
		bool bBulletHit() { mixin(MGBPC(128, 0x400)); }
		bool bBulletHit(bool val) { mixin(MSBPC(128, 0x400)); }
		bool bLeaveBodyEffect() { mixin(MGBPC(128, 0x200)); }
		bool bLeaveBodyEffect(bool val) { mixin(MSBPC(128, 0x200)); }
		bool bUseTearOffMomentum() { mixin(MGBPC(128, 0x80)); }
		bool bUseTearOffMomentum(bool val) { mixin(MSBPC(128, 0x80)); }
		bool bCauseConvulsions() { mixin(MGBPC(128, 0x40)); }
		bool bCauseConvulsions(bool val) { mixin(MSBPC(128, 0x40)); }
		bool bNeverGibs() { mixin(MGBPC(128, 0x8)); }
		bool bNeverGibs(bool val) { mixin(MSBPC(128, 0x8)); }
		bool bAlwaysGibs() { mixin(MGBPC(128, 0x4)); }
		bool bAlwaysGibs(bool val) { mixin(MSBPC(128, 0x4)); }
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
	static void DoCustomDamageEffects(UTPawn ThePawn, ScriptClass TheDamageType, ref in Actor.TraceHitInfo HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = cast(Actor.TraceHitInfo)HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		StaticClass.ProcessEvent(Functions.DoCustomDamageEffects, params.ptr, cast(void*)0);
	}
	static void CreateDeathSkeleton(UTPawn ThePawn, ScriptClass TheDamageType, ref in Actor.TraceHitInfo HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = cast(Actor.TraceHitInfo)HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		StaticClass.ProcessEvent(Functions.CreateDeathSkeleton, params.ptr, cast(void*)0);
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
	static void CreateDeathGoreChunks(UTPawn ThePawn, ScriptClass TheDamageType, ref in Actor.TraceHitInfo HitInfo, Vector HitLocation)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UTPawn*)params.ptr = ThePawn;
		*cast(ScriptClass*)&params[4] = TheDamageType;
		*cast(Actor.TraceHitInfo*)&params[8] = cast(Actor.TraceHitInfo)HitInfo;
		*cast(Vector*)&params[36] = HitLocation;
		StaticClass.ProcessEvent(Functions.CreateDeathGoreChunks, params.ptr, cast(void*)0);
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
	static void CalcDeathCamera(UTPawn P, float DeltaTime, ref Vector CameraLocation, ref Rotator CameraRotation, ref float CameraFOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(UTPawn*)params.ptr = P;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Vector*)&params[8] = CameraLocation;
		*cast(Rotator*)&params[20] = CameraRotation;
		*cast(float*)&params[32] = CameraFOV;
		StaticClass.ProcessEvent(Functions.CalcDeathCamera, params.ptr, cast(void*)0);
		CameraLocation = *cast(Vector*)&params[8];
		CameraRotation = *cast(Rotator*)&params[20];
		CameraFOV = *cast(float*)&params[32];
	}
}
