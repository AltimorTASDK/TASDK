module UnrealScript.UTGame.UTBeamWeapon;

import ScriptClasses;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.HUD;

extern(C++) interface UTBeamWeapon : UTWeapon
{
public extern(D):
	@property final auto ref
	{
		ForceFeedbackWaveform BeamWeaponFireWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 1560); }
		ScriptName BeamPostFireAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1544); }
		ScriptName BeamFireAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1528); }
		ScriptName BeamPreFireAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1512); }
		ScriptName EndPointParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1504); }
		ScriptName BeamSockets() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1488); }
		ParticleSystem BeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1472); }
	}
final:
	void AddBeamEmitter()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41302], cast(void*)0, cast(void*)0);
	}
	void KillBeamEmitter()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41303], cast(void*)0, cast(void*)0);
	}
	void SetBeamEmitterHidden(bool bHide)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHide;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41304], params.ptr, cast(void*)0);
	}
	void UpdateBeamEmitter(Vector FlashLocation, Vector HitNormal, Actor HitActor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = FlashLocation;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(Actor*)&params[24] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41306], params.ptr, cast(void*)0);
	}
	void ProcessBeamHit(Vector StartTrace, Vector AimDir, Actor.ImpactInfo* TestImpact, float DeltaTime)
	{
		ubyte params[108];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = AimDir;
		*cast(Actor.ImpactInfo*)&params[24] = *TestImpact;
		*cast(float*)&params[104] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41312], params.ptr, cast(void*)0);
		*TestImpact = *cast(Actor.ImpactInfo*)&params[24];
	}
	void UpdateBeam(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41317], params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41351], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
}
