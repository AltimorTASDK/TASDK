module UnrealScript.TribesGame.TrProj_Tracer;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Tracer : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Tracer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mCalcTracerAccel;
			ScriptFunction mInitTracer;
			ScriptFunction mKillProjectile;
			ScriptFunction mScaleDownFinishedNotify;
			ScriptFunction mScaleUpFinishedNotify;
			ScriptFunction mOutsideWorldBounds;
			ScriptFunction mTick;
			ScriptFunction mExplode;
			ScriptFunction mRecycle;
			ScriptFunction mReset;
			ScriptFunction mWakeProjectile;
			ScriptFunction mProcessTouch;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.ReplicatedEvent")); }
			ScriptFunction CalcTracerAccel() { return mCalcTracerAccel ? mCalcTracerAccel : (mCalcTracerAccel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.CalcTracerAccel")); }
			ScriptFunction InitTracer() { return mInitTracer ? mInitTracer : (mInitTracer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.InitTracer")); }
			ScriptFunction KillProjectile() { return mKillProjectile ? mKillProjectile : (mKillProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.KillProjectile")); }
			ScriptFunction ScaleDownFinishedNotify() { return mScaleDownFinishedNotify ? mScaleDownFinishedNotify : (mScaleDownFinishedNotify = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.ScaleDownFinishedNotify")); }
			ScriptFunction ScaleUpFinishedNotify() { return mScaleUpFinishedNotify ? mScaleUpFinishedNotify : (mScaleUpFinishedNotify = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.ScaleUpFinishedNotify")); }
			ScriptFunction OutsideWorldBounds() { return mOutsideWorldBounds ? mOutsideWorldBounds : (mOutsideWorldBounds = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.OutsideWorldBounds")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.Tick")); }
			ScriptFunction Explode() { return mExplode ? mExplode : (mExplode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.Explode")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.Recycle")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.Reset")); }
			ScriptFunction WakeProjectile() { return mWakeProjectile ? mWakeProjectile : (mWakeProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.WakeProjectile")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Tracer.ProcessTouch")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector m_vTracerDrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 824); }
			Vector m_vInitialFrameOfRefVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 864); }
			Vector m_vDestinationLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 852); }
			float m_fMeshScaleDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 848); }
			float m_fCurScale() { return *cast(float*)(cast(size_t)cast(void*)this + 844); }
			float m_fMeshScaleUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
			float m_fAccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
		}
		bool m_bScalingDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 840) & 0x2) != 0; }
		bool m_bScalingDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 840) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 840) &= ~0x2; } return val; }
		bool m_bScaledUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 840) & 0x1) != 0; }
		bool m_bScaledUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 840) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 840) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void CalcTracerAccel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcTracerAccel, cast(void*)0, cast(void*)0);
	}
	void InitTracer(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitTracer, params.ptr, cast(void*)0);
	}
	void KillProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillProjectile, cast(void*)0, cast(void*)0);
	}
	void ScaleDownFinishedNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ScaleDownFinishedNotify, cast(void*)0, cast(void*)0);
	}
	void ScaleUpFinishedNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ScaleUpFinishedNotify, cast(void*)0, cast(void*)0);
	}
	void OutsideWorldBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OutsideWorldBounds, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void WakeProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WakeProjectile, cast(void*)0, cast(void*)0);
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
}
