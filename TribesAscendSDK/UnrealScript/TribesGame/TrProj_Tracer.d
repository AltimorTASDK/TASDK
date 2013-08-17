module UnrealScript.TribesGame.TrProj_Tracer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Tracer : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_Tracer")()); }
	private static __gshared TrProj_Tracer mDefaultProperties;
	@property final static TrProj_Tracer DefaultProperties() { mixin(MGDPC!(TrProj_Tracer, "TrProj_Tracer TribesGame.Default__TrProj_Tracer")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrProj_Tracer.PostBeginPlay")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrProj_Tracer.ReplicatedEvent")()); }
			ScriptFunction CalcTracerAccel() { mixin(MGF!("mCalcTracerAccel", "Function TribesGame.TrProj_Tracer.CalcTracerAccel")()); }
			ScriptFunction InitTracer() { mixin(MGF!("mInitTracer", "Function TribesGame.TrProj_Tracer.InitTracer")()); }
			ScriptFunction KillProjectile() { mixin(MGF!("mKillProjectile", "Function TribesGame.TrProj_Tracer.KillProjectile")()); }
			ScriptFunction ScaleDownFinishedNotify() { mixin(MGF!("mScaleDownFinishedNotify", "Function TribesGame.TrProj_Tracer.ScaleDownFinishedNotify")()); }
			ScriptFunction ScaleUpFinishedNotify() { mixin(MGF!("mScaleUpFinishedNotify", "Function TribesGame.TrProj_Tracer.ScaleUpFinishedNotify")()); }
			ScriptFunction OutsideWorldBounds() { mixin(MGF!("mOutsideWorldBounds", "Function TribesGame.TrProj_Tracer.OutsideWorldBounds")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrProj_Tracer.Tick")()); }
			ScriptFunction Explode() { mixin(MGF!("mExplode", "Function TribesGame.TrProj_Tracer.Explode")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function TribesGame.TrProj_Tracer.Recycle")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function TribesGame.TrProj_Tracer.Reset")()); }
			ScriptFunction WakeProjectile() { mixin(MGF!("mWakeProjectile", "Function TribesGame.TrProj_Tracer.WakeProjectile")()); }
			ScriptFunction ProcessTouch() { mixin(MGF!("mProcessTouch", "Function TribesGame.TrProj_Tracer.ProcessTouch")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector m_vTracerDrawScale3D() { mixin(MGPC!(Vector, 824)()); }
			Vector m_vInitialFrameOfRefVelocity() { mixin(MGPC!(Vector, 864)()); }
			Vector m_vDestinationLoc() { mixin(MGPC!(Vector, 852)()); }
			float m_fMeshScaleDownTime() { mixin(MGPC!(float, 848)()); }
			float m_fCurScale() { mixin(MGPC!(float, 844)()); }
			float m_fMeshScaleUpTime() { mixin(MGPC!(float, 836)()); }
			float m_fAccelRate() { mixin(MGPC!(float, 820)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_TracerPSC'!
		}
		bool m_bScalingDown() { mixin(MGBPC!(840, 0x2)()); }
		bool m_bScalingDown(bool val) { mixin(MSBPC!(840, 0x2)()); }
		bool m_bScaledUp() { mixin(MGBPC!(840, 0x1)()); }
		bool m_bScaledUp(bool val) { mixin(MSBPC!(840, 0x1)()); }
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
