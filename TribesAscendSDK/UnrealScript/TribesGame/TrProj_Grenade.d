module UnrealScript.TribesGame.TrProj_Grenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Grenade : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_Grenade")()); }
	private static __gshared TrProj_Grenade mDefaultProperties;
	@property final static TrProj_Grenade DefaultProperties() { mixin(MGDPC!(TrProj_Grenade, "TrProj_Grenade TribesGame.Default__TrProj_Grenade")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInitProjectile;
			ScriptFunction mSpawnCollisionProxy;
			ScriptFunction mDestroyCollisionProxy;
			ScriptFunction mShutDown;
			ScriptFunction mApplyInheritance;
			ScriptFunction mTimer;
			ScriptFunction mHitWall;
			ScriptFunction mProcessTouch;
			ScriptFunction mPhysicsVolumeChange;
			ScriptFunction mExplode;
			ScriptFunction mStickToTarget;
			ScriptFunction mPlayStuckOnEffects;
			ScriptFunction mMyOnParticleSystemFinished;
			ScriptFunction mPawnEnteredDetonationArea;
			ScriptFunction mPawnLeftDetonationArea;
			ScriptFunction mNativeExplode;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrProj_Grenade.PostBeginPlay")()); }
			ScriptFunction InitProjectile() { mixin(MGF!("mInitProjectile", "Function TribesGame.TrProj_Grenade.InitProjectile")()); }
			ScriptFunction SpawnCollisionProxy() { mixin(MGF!("mSpawnCollisionProxy", "Function TribesGame.TrProj_Grenade.SpawnCollisionProxy")()); }
			ScriptFunction DestroyCollisionProxy() { mixin(MGF!("mDestroyCollisionProxy", "Function TribesGame.TrProj_Grenade.DestroyCollisionProxy")()); }
			ScriptFunction ShutDown() { mixin(MGF!("mShutDown", "Function TribesGame.TrProj_Grenade.ShutDown")()); }
			ScriptFunction ApplyInheritance() { mixin(MGF!("mApplyInheritance", "Function TribesGame.TrProj_Grenade.ApplyInheritance")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function TribesGame.TrProj_Grenade.Timer")()); }
			ScriptFunction HitWall() { mixin(MGF!("mHitWall", "Function TribesGame.TrProj_Grenade.HitWall")()); }
			ScriptFunction ProcessTouch() { mixin(MGF!("mProcessTouch", "Function TribesGame.TrProj_Grenade.ProcessTouch")()); }
			ScriptFunction PhysicsVolumeChange() { mixin(MGF!("mPhysicsVolumeChange", "Function TribesGame.TrProj_Grenade.PhysicsVolumeChange")()); }
			ScriptFunction Explode() { mixin(MGF!("mExplode", "Function TribesGame.TrProj_Grenade.Explode")()); }
			ScriptFunction StickToTarget() { mixin(MGF!("mStickToTarget", "Function TribesGame.TrProj_Grenade.StickToTarget")()); }
			ScriptFunction PlayStuckOnEffects() { mixin(MGF!("mPlayStuckOnEffects", "Function TribesGame.TrProj_Grenade.PlayStuckOnEffects")()); }
			ScriptFunction MyOnParticleSystemFinished() { mixin(MGF!("mMyOnParticleSystemFinished", "Function TribesGame.TrProj_Grenade.MyOnParticleSystemFinished")()); }
			ScriptFunction PawnEnteredDetonationArea() { mixin(MGF!("mPawnEnteredDetonationArea", "Function TribesGame.TrProj_Grenade.PawnEnteredDetonationArea")()); }
			ScriptFunction PawnLeftDetonationArea() { mixin(MGF!("mPawnLeftDetonationArea", "Function TribesGame.TrProj_Grenade.PawnLeftDetonationArea")()); }
			ScriptFunction NativeExplode() { mixin(MGF!("mNativeExplode", "Function TribesGame.TrProj_Grenade.NativeExplode")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Pawn) m_PotentialTargets() { mixin(MGPC!(ScriptArray!(Pawn), 872)()); }
			float m_fProxyDetonationHeight() { mixin(MGPC!(float, 868)()); }
			float m_fProxyDetonationRadius() { mixin(MGPC!(float, 864)()); }
			ScriptClass m_CollisionProxyClass() { mixin(MGPC!(ScriptClass, 860)()); }
			TrCollisionProxy m_CollisionProxy() { mixin(MGPC!(TrCollisionProxy, 856)()); }
			float m_fStuckMomentumMultiplier() { mixin(MGPC!(float, 852)()); }
			float m_fStuckDamageMultiplier() { mixin(MGPC!(float, 848)()); }
			Vector m_OverloadHitNormal() { mixin(MGPC!(Vector, 836)()); }
			SoundCue m_StuckOnPawnLoopingSound() { mixin(MGPC!(SoundCue, 832)()); }
			ParticleSystem m_StuckOnTargetTemplate() { mixin(MGPC!(ParticleSystem, 828)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_StuckOnTargetEffects'!
			float m_fExplosionTime() { mixin(MGPC!(float, 820)()); }
		}
		bool m_bStuckOnPlayer() { mixin(MGBPC!(816, 0x1)()); }
		bool m_bStuckOnPlayer(bool val) { mixin(MSBPC!(816, 0x1)()); }
		bool m_bSpawnProxyOnInit() { mixin(MGBPC!(816, 0x80)()); }
		bool m_bSpawnProxyOnInit(bool val) { mixin(MSBPC!(816, 0x80)()); }
		bool m_bScanProxyOnInit() { mixin(MGBPC!(816, 0x40)()); }
		bool m_bScanProxyOnInit(bool val) { mixin(MSBPC!(816, 0x40)()); }
		bool m_bFullyInheritVelocity() { mixin(MGBPC!(816, 0x20)()); }
		bool m_bFullyInheritVelocity(bool val) { mixin(MSBPC!(816, 0x20)()); }
		bool m_bDoRandSpin() { mixin(MGBPC!(816, 0x10)()); }
		bool m_bDoRandSpin(bool val) { mixin(MSBPC!(816, 0x10)()); }
		bool m_bBounceRequiredForExplode() { mixin(MGBPC!(816, 0x8)()); }
		bool m_bBounceRequiredForExplode(bool val) { mixin(MSBPC!(816, 0x8)()); }
		bool m_bExplodeOnTouchEvent() { mixin(MGBPC!(816, 0x4)()); }
		bool m_bExplodeOnTouchEvent(bool val) { mixin(MSBPC!(816, 0x4)()); }
		bool m_bTimedExplosion() { mixin(MGBPC!(816, 0x2)()); }
		bool m_bTimedExplosion(bool val) { mixin(MSBPC!(816, 0x2)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void SpawnCollisionProxy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCollisionProxy, cast(void*)0, cast(void*)0);
	}
	void DestroyCollisionProxy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyCollisionProxy, cast(void*)0, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	void ApplyInheritance(Vector ProjectileDir)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ProjectileDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyInheritance, params.ptr, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.HitWall, params.ptr, cast(void*)0);
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTouch, params.ptr, cast(void*)0);
	}
	void PhysicsVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.PhysicsVolumeChange, params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	bool StickToTarget(Actor Target, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.StickToTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void PlayStuckOnEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStuckOnEffects, cast(void*)0, cast(void*)0);
	}
	void MyOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.MyOnParticleSystemFinished, params.ptr, cast(void*)0);
	}
	void PawnEnteredDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredDetonationArea, params.ptr, cast(void*)0);
	}
	void PawnLeftDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeftDetonationArea, params.ptr, cast(void*)0);
	}
	void NativeExplode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.NativeExplode, params.ptr, cast(void*)0);
	}
}
