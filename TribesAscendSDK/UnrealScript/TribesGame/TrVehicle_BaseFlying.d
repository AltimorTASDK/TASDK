module UnrealScript.TribesGame.TrVehicle_BaseFlying;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicle_BaseFlying : TrVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicle_BaseFlying")()); }
	private static __gshared TrVehicle_BaseFlying mDefaultProperties;
	@property final static TrVehicle_BaseFlying DefaultProperties() { mixin(MGDPC!(TrVehicle_BaseFlying, "TrVehicle_BaseFlying TribesGame.Default__TrVehicle_BaseFlying")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrVehicle_BaseFlying.PostBeginPlay")()); }
			ScriptFunction CreateParticleSystems() { mixin(MGF!("mCreateParticleSystems", "Function TribesGame.TrVehicle_BaseFlying.CreateParticleSystems")()); }
			ScriptFunction SetInputs() { mixin(MGF!("mSetInputs", "Function TribesGame.TrVehicle_BaseFlying.SetInputs")()); }
			ScriptFunction VehicleCalcCamera() { mixin(MGF!("mVehicleCalcCamera", "Function TribesGame.TrVehicle_BaseFlying.VehicleCalcCamera")()); }
		}
	}
	struct FlyingParticleEffects
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrVehicle_BaseFlying.FlyingParticleEffects")()); }
		@property final
		{
			auto ref
			{
				// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ParticleEffect'!
				ParticleSystem ParticleTemplate() { mixin(MGPS!("ParticleSystem", 12)()); }
				ScriptName SocketToAttach() { mixin(MGPS!("ScriptName", 4)()); }
			}
			bool bIsAttachedToBoost() { mixin(MGBPS!(0, 0x1)()); }
			bool bIsAttachedToBoost(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) LeftEngineParticles() { mixin(MGPC!("ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)", 3212)()); }
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) MidEngineParticles() { mixin(MGPC!("ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)", 3224)()); }
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) RightEngineParticles() { mixin(MGPC!("ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)", 3236)()); }
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) LeftContrailParticles() { mixin(MGPC!("ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)", 3248)()); }
			ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects) RightContrailParticles() { mixin(MGPC!("ScriptArray!(TrVehicle_BaseFlying.FlyingParticleEffects)", 3260)()); }
			float m_fBoostThrustInvDuration() { mixin(MGPC!("float", 3284)()); }
			float m_fBoostThrustBuildUp() { mixin(MGPC!("float", 3280)()); }
			float m_fThrustInvDuration() { mixin(MGPC!("float", 3276)()); }
			float m_fThrustBuildUp() { mixin(MGPC!("float", 3272)()); }
		}
		bool m_bCanAutoLevelVehicle() { mixin(MGBPC!(3288, 0x2)()); }
		bool m_bCanAutoLevelVehicle(bool val) { mixin(MSBPC!(3288, 0x2)()); }
		bool m_bFreeLook() { mixin(MGBPC!(3288, 0x1)()); }
		bool m_bFreeLook(bool val) { mixin(MSBPC!(3288, 0x1)()); }
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
	void VehicleCalcCamera(float DeltaTime, int SeatIndex, ref Vector out_CamLoc, ref Rotator out_CamRot, ref Vector CamStart, bool* bPivotOnly = null)
	{
		ubyte params[48];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(int*)&params[4] = SeatIndex;
		*cast(Vector*)&params[8] = out_CamLoc;
		*cast(Rotator*)&params[20] = out_CamRot;
		*cast(Vector*)&params[32] = CamStart;
		if (bPivotOnly !is null)
			*cast(bool*)&params[44] = *bPivotOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleCalcCamera, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[8];
		out_CamRot = *cast(Rotator*)&params[20];
		CamStart = *cast(Vector*)&params[32];
	}
}
