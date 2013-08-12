module UnrealScript.TribesGame.TrVehicle_BaseFlying;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicle_BaseFlying : TrVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_BaseFlying")); }
	private static __gshared TrVehicle_BaseFlying mDefaultProperties;
	@property final static TrVehicle_BaseFlying DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicle_BaseFlying)("TrVehicle_BaseFlying TribesGame.Default__TrVehicle_BaseFlying")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mCreateParticleSystems;
			ScriptFunction mSetInputs;
			ScriptFunction mVehicleCalcCamera;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_BaseFlying.PostBeginPlay")); }
			ScriptFunction CreateParticleSystems() { return mCreateParticleSystems ? mCreateParticleSystems : (mCreateParticleSystems = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_BaseFlying.CreateParticleSystems")); }
			ScriptFunction SetInputs() { return mSetInputs ? mSetInputs : (mSetInputs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_BaseFlying.SetInputs")); }
			ScriptFunction VehicleCalcCamera() { return mVehicleCalcCamera ? mVehicleCalcCamera : (mVehicleCalcCamera = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_BaseFlying.VehicleCalcCamera")); }
		}
	}
	struct FlyingParticleEffects
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrVehicle_BaseFlying.FlyingParticleEffects")); }
		@property final
		{
			auto ref
			{
				ParticleSystem ParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 12); }
				ScriptName SocketToAttach() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			}
			bool bIsAttachedToBoost() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bIsAttachedToBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) LeftEngineParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3212); }
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) MidEngineParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3224); }
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) RightEngineParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3236); }
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) LeftContrailParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3248); }
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) RightContrailParticles() { return *cast(ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)*)(cast(size_t)cast(void*)this + 3260); }
			float m_fBoostThrustInvDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 3284); }
			float m_fBoostThrustBuildUp() { return *cast(float*)(cast(size_t)cast(void*)this + 3280); }
			float m_fThrustInvDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 3276); }
			float m_fThrustBuildUp() { return *cast(float*)(cast(size_t)cast(void*)this + 3272); }
		}
		bool m_bCanAutoLevelVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3288) & 0x2) != 0; }
		bool m_bCanAutoLevelVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3288) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3288) &= ~0x2; } return val; }
		bool m_bFreeLook() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3288) & 0x1) != 0; }
		bool m_bFreeLook(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3288) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3288) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void CreateParticleSystems()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateParticleSystems, cast(void*)0, cast(void*)0);
	}
	void SetInputs(float InForward, float InStrafe, float InUp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInputs, params.ptr, cast(void*)0);
	}
	void VehicleCalcCamera(float DeltaTime, int SeatIndex, Vector* out_CamLoc, Rotator* out_CamRot, Vector* CamStart, bool bPivotOnly)
	{
		ubyte params[48];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(int*)&params[4] = SeatIndex;
		*cast(Vector*)&params[8] = *out_CamLoc;
		*cast(Rotator*)&params[20] = *out_CamRot;
		*cast(Vector*)&params[32] = *CamStart;
		*cast(bool*)&params[44] = bPivotOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleCalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[8];
		*out_CamRot = *cast(Rotator*)&params[20];
		*CamStart = *cast(Vector*)&params[32];
	}
}
