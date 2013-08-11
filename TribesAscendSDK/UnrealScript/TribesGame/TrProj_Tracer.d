module UnrealScript.TribesGame.TrProj_Tracer;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Tracer : TrProjectile
{
	public @property final auto ref Vector m_vTracerDrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref Vector m_vInitialFrameOfRefVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 864); }
	public @property final auto ref Vector m_vDestinationLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref float m_fMeshScaleDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 848); }
	public @property final auto ref float m_fCurScale() { return *cast(float*)(cast(size_t)cast(void*)this + 844); }
	public @property final bool m_bScalingDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 840) & 0x2) != 0; }
	public @property final bool m_bScalingDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 840) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 840) &= ~0x2; } return val; }
	public @property final bool m_bScaledUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 840) & 0x1) != 0; }
	public @property final bool m_bScaledUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 840) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 840) &= ~0x1; } return val; }
	public @property final auto ref float m_fMeshScaleUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
	public @property final auto ref float m_fAccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108209], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108210], params.ptr, cast(void*)0);
	}
	final void CalcTracerAccel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108212], cast(void*)0, cast(void*)0);
	}
	final void InitTracer(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108214], params.ptr, cast(void*)0);
	}
	final void KillProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108219], cast(void*)0, cast(void*)0);
	}
	final void ScaleDownFinishedNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108220], cast(void*)0, cast(void*)0);
	}
	final void ScaleUpFinishedNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108221], cast(void*)0, cast(void*)0);
	}
	final void OutsideWorldBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108222], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108223], params.ptr, cast(void*)0);
	}
	final void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108226], params.ptr, cast(void*)0);
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108229], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108230], cast(void*)0, cast(void*)0);
	}
	final void WakeProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108231], cast(void*)0, cast(void*)0);
	}
	final void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108232], params.ptr, cast(void*)0);
	}
}
