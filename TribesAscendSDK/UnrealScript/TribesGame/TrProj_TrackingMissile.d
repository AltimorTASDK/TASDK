module UnrealScript.TribesGame.TrProj_TrackingMissile;

import ScriptClasses;
import UnrealScript.TribesGame.TrSeekingMissileManager;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_TrackingMissile : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_TrackingMissile")); }
	private static __gshared TrProj_TrackingMissile mDefaultProperties;
	@property final static TrProj_TrackingMissile DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_TrackingMissile)("TrProj_TrackingMissile TribesGame.Default__TrProj_TrackingMissile")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInit;
			ScriptFunction mProcessTouch;
			ScriptFunction mEnableCollisionTimer;
			ScriptFunction mSetSeekTarget;
			ScriptFunction mNativeExplode;
			ScriptFunction mOnExploded;
			ScriptFunction mExplode;
			ScriptFunction mDestroyed;
			ScriptFunction mGetSeekingMissileManager;
			ScriptFunction mSpawnFlightEffects;
			ScriptFunction mSpawnFlightEffectsTimer;
			ScriptFunction mTakeDamage;
			ScriptFunction mTick;
			ScriptFunction mPostRenderFor;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.PostBeginPlay")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.Init")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.ProcessTouch")); }
			ScriptFunction EnableCollisionTimer() { return mEnableCollisionTimer ? mEnableCollisionTimer : (mEnableCollisionTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.EnableCollisionTimer")); }
			ScriptFunction SetSeekTarget() { return mSetSeekTarget ? mSetSeekTarget : (mSetSeekTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.SetSeekTarget")); }
			ScriptFunction NativeExplode() { return mNativeExplode ? mNativeExplode : (mNativeExplode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.NativeExplode")); }
			ScriptFunction OnExploded() { return mOnExploded ? mOnExploded : (mOnExploded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.OnExploded")); }
			ScriptFunction Explode() { return mExplode ? mExplode : (mExplode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.Explode")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.Destroyed")); }
			ScriptFunction GetSeekingMissileManager() { return mGetSeekingMissileManager ? mGetSeekingMissileManager : (mGetSeekingMissileManager = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.GetSeekingMissileManager")); }
			ScriptFunction SpawnFlightEffects() { return mSpawnFlightEffects ? mSpawnFlightEffects : (mSpawnFlightEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.SpawnFlightEffects")); }
			ScriptFunction SpawnFlightEffectsTimer() { return mSpawnFlightEffectsTimer ? mSpawnFlightEffectsTimer : (mSpawnFlightEffectsTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.SpawnFlightEffectsTimer")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.TakeDamage")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.Tick")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile.PostRenderFor")); }
		}
	}
	enum ETrackingMissileStage : ubyte
	{
		ETrackingMissileStage_JustFired = 0,
		ETrackingMissileStage_AdjustingForGoodLOS = 1,
		ETrackingMissileStage_HomingInOnTarget = 2,
		ETrackingMissileStage_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			float m_fLoseTightTrackingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
			Rotator m_MissileCaratRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 872); }
			float m_fStage1MinGroundDist() { return *cast(float*)(cast(size_t)cast(void*)this + 868); }
			Vector m_vLastKnownTargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 856); }
			float m_fInitialLocationZ() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
			float m_fMinHeightGainForGoodLOS() { return *cast(float*)(cast(size_t)cast(void*)this + 844); }
			float m_fIdealHeightAboveTargetForGoodLOS() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
			float m_fAdjustingForGoodLOSAccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
			float m_fTrackingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			float m_fTrackingDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
			float m_fLOSDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			TrProj_TrackingMissile.ETrackingMissileStage m_MissileStage() { return *cast(TrProj_TrackingMissile.ETrackingMissileStage*)(cast(size_t)cast(void*)this + 816); }
		}
		bool m_bLostTightHoming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x2) != 0; }
		bool m_bLostTightHoming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x2; } return val; }
		bool m_bHasBentToTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x1) != 0; }
		bool m_bHasBentToTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Init(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
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
	void EnableCollisionTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableCollisionTimer, cast(void*)0, cast(void*)0);
	}
	void SetSeekTarget(Actor NewSeekTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewSeekTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSeekTarget, params.ptr, cast(void*)0);
	}
	void NativeExplode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.NativeExplode, params.ptr, cast(void*)0);
	}
	void OnExploded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExploded, cast(void*)0, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	TrSeekingMissileManager GetSeekingMissileManager()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeekingMissileManager, params.ptr, cast(void*)0);
		return *cast(TrSeekingMissileManager*)params.ptr;
	}
	void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
	void SpawnFlightEffectsTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffectsTimer, cast(void*)0, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
}
