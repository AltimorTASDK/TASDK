module UnrealScript.TribesGame.TrProj_TrackingMissile;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_TrackingMissile")()); }
	private static __gshared TrProj_TrackingMissile mDefaultProperties;
	@property final static TrProj_TrackingMissile DefaultProperties() { mixin(MGDPC!(TrProj_TrackingMissile, "TrProj_TrackingMissile TribesGame.Default__TrProj_TrackingMissile")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrProj_TrackingMissile.PostBeginPlay")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.TrProj_TrackingMissile.Init")()); }
			ScriptFunction ProcessTouch() { mixin(MGF!("mProcessTouch", "Function TribesGame.TrProj_TrackingMissile.ProcessTouch")()); }
			ScriptFunction EnableCollisionTimer() { mixin(MGF!("mEnableCollisionTimer", "Function TribesGame.TrProj_TrackingMissile.EnableCollisionTimer")()); }
			ScriptFunction SetSeekTarget() { mixin(MGF!("mSetSeekTarget", "Function TribesGame.TrProj_TrackingMissile.SetSeekTarget")()); }
			ScriptFunction NativeExplode() { mixin(MGF!("mNativeExplode", "Function TribesGame.TrProj_TrackingMissile.NativeExplode")()); }
			ScriptFunction OnExploded() { mixin(MGF!("mOnExploded", "Function TribesGame.TrProj_TrackingMissile.OnExploded")()); }
			ScriptFunction Explode() { mixin(MGF!("mExplode", "Function TribesGame.TrProj_TrackingMissile.Explode")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrProj_TrackingMissile.Destroyed")()); }
			ScriptFunction GetSeekingMissileManager() { mixin(MGF!("mGetSeekingMissileManager", "Function TribesGame.TrProj_TrackingMissile.GetSeekingMissileManager")()); }
			ScriptFunction SpawnFlightEffects() { mixin(MGF!("mSpawnFlightEffects", "Function TribesGame.TrProj_TrackingMissile.SpawnFlightEffects")()); }
			ScriptFunction SpawnFlightEffectsTimer() { mixin(MGF!("mSpawnFlightEffectsTimer", "Function TribesGame.TrProj_TrackingMissile.SpawnFlightEffectsTimer")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function TribesGame.TrProj_TrackingMissile.TakeDamage")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrProj_TrackingMissile.Tick")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrProj_TrackingMissile.PostRenderFor")()); }
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
			float m_fLoseTightTrackingDistance() { mixin(MGPC!(float, 884)()); }
			Rotator m_MissileCaratRotation() { mixin(MGPC!(Rotator, 872)()); }
			float m_fStage1MinGroundDist() { mixin(MGPC!(float, 868)()); }
			Vector m_vLastKnownTargetLocation() { mixin(MGPC!(Vector, 856)()); }
			float m_fInitialLocationZ() { mixin(MGPC!(float, 852)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_ProjectileMesh'!
			float m_fMinHeightGainForGoodLOS() { mixin(MGPC!(float, 844)()); }
			float m_fIdealHeightAboveTargetForGoodLOS() { mixin(MGPC!(float, 840)()); }
			float m_fAdjustingForGoodLOSAccelRate() { mixin(MGPC!(float, 836)()); }
			float m_fTrackingTime() { mixin(MGPC!(float, 832)()); }
			float m_fTrackingDelay() { mixin(MGPC!(float, 828)()); }
			float m_fLOSDelay() { mixin(MGPC!(float, 824)()); }
			TrProj_TrackingMissile.ETrackingMissileStage m_MissileStage() { mixin(MGPC!(TrProj_TrackingMissile.ETrackingMissileStage, 816)()); }
		}
		bool m_bLostTightHoming() { mixin(MGBPC!(820, 0x2)()); }
		bool m_bLostTightHoming(bool val) { mixin(MSBPC!(820, 0x2)()); }
		bool m_bHasBentToTarget() { mixin(MGBPC!(820, 0x1)()); }
		bool m_bHasBentToTarget(bool val) { mixin(MSBPC!(820, 0x1)()); }
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
