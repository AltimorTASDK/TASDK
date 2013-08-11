module UnrealScript.TribesGame.TrProj_Tracer;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Tracer : TrProjectile
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108209], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108210], params.ptr, cast(void*)0);
	}
	void CalcTracerAccel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108212], cast(void*)0, cast(void*)0);
	}
	void InitTracer(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108214], params.ptr, cast(void*)0);
	}
	void KillProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108219], cast(void*)0, cast(void*)0);
	}
	void ScaleDownFinishedNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108220], cast(void*)0, cast(void*)0);
	}
	void ScaleUpFinishedNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108221], cast(void*)0, cast(void*)0);
	}
	void OutsideWorldBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108222], cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108223], params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108226], params.ptr, cast(void*)0);
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108229], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108230], cast(void*)0, cast(void*)0);
	}
	void WakeProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108231], cast(void*)0, cast(void*)0);
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108232], params.ptr, cast(void*)0);
	}
}
