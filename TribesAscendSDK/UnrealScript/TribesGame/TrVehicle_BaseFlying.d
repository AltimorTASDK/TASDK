module UnrealScript.TribesGame.TrVehicle_BaseFlying;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicle_BaseFlying : TrVehicle
{
	struct FlyingParticleEffects
	{
		public @property final auto ref ParticleSystem ParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 12); }
		private ubyte __ParticleTemplate[4];
		public @property final auto ref ScriptName SocketToAttach() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __SocketToAttach[8];
		public @property final bool bIsAttachedToBoost() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bIsAttachedToBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bIsAttachedToBoost[4];
	}
	public @property final bool m_bCanAutoLevelVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3288) & 0x2) != 0; }
	public @property final bool m_bCanAutoLevelVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3288) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3288) &= ~0x2; } return val; }
	public @property final auto ref ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) LeftEngineParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3212); }
	public @property final auto ref ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) MidEngineParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3224); }
	public @property final auto ref ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) RightEngineParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3236); }
	public @property final auto ref ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) LeftContrailParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3248); }
	public @property final auto ref ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) RightContrailParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3260); }
	public @property final bool m_bFreeLook() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3288) & 0x1) != 0; }
	public @property final bool m_bFreeLook(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3288) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3288) &= ~0x1; } return val; }
	public @property final auto ref float m_fBoostThrustInvDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 3284); }
	public @property final auto ref float m_fBoostThrustBuildUp() { return *cast(float*)(cast(size_t)cast(void*)this + 3280); }
	public @property final auto ref float m_fThrustInvDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 3276); }
	public @property final auto ref float m_fThrustBuildUp() { return *cast(float*)(cast(size_t)cast(void*)this + 3272); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114668], cast(void*)0, cast(void*)0);
	}
	final void CreateParticleSystems()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114669], cast(void*)0, cast(void*)0);
	}
	final void SetInputs(float InForward, float InStrafe, float InUp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114671], params.ptr, cast(void*)0);
	}
	final void VehicleCalcCamera(float DeltaTime, int SeatIndex, Vector* out_CamLoc, Rotator* out_CamRot, Vector* CamStart, bool bPivotOnly)
	{
		ubyte params[48];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(int*)&params[4] = SeatIndex;
		*cast(Vector*)&params[8] = *out_CamLoc;
		*cast(Rotator*)&params[20] = *out_CamRot;
		*cast(Vector*)&params[32] = *CamStart;
		*cast(bool*)&params[44] = bPivotOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114675], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[8];
		*out_CamRot = *cast(Rotator*)&params[20];
		*CamStart = *cast(Vector*)&params[32];
	}
}
