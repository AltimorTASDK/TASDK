module UnrealScript.TribesGame.TrVehicle_Tank;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraShake;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicle_Tank : TrVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicle_Tank")()); }
	private static __gshared TrVehicle_Tank mDefaultProperties;
	@property final static TrVehicle_Tank DefaultProperties() { mixin(MGDPC!(TrVehicle_Tank, "TrVehicle_Tank TribesGame.Default__TrVehicle_Tank")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mVehicleWeaponFireEffects;
			ScriptFunction mProcessViewRotationBasedOnSeat;
			ScriptFunction mLimitViewRotation;
		}
		public @property static final
		{
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrVehicle_Tank.PostInitAnimTree")()); }
			ScriptFunction VehicleWeaponFireEffects() { mixin(MGF!("mVehicleWeaponFireEffects", "Function TribesGame.TrVehicle_Tank.VehicleWeaponFireEffects")()); }
			ScriptFunction ProcessViewRotationBasedOnSeat() { mixin(MGF!("mProcessViewRotationBasedOnSeat", "Function TribesGame.TrVehicle_Tank.ProcessViewRotationBasedOnSeat")()); }
			ScriptFunction LimitViewRotation() { mixin(MGF!("mLimitViewRotation", "Function TribesGame.TrVehicle_Tank.LimitViewRotation")()); }
		}
	}
	@property final auto ref
	{
		float m_CameraShakeEffectiveRadius() { mixin(MGPC!(float, 3244)()); }
		CameraShake m_FireCameraShake() { mixin(MGPC!(CameraShake, 3240)()); }
		ubyte GunnerFiringMode() { mixin(MGPC!(ubyte, 3237)()); }
		ubyte GunnerFlashCount() { mixin(MGPC!(ubyte, 3236)()); }
		Rotator GunnerWeaponRotation() { mixin(MGPC!(Rotator, 3224)()); }
		Vector GunnerFlashLocation() { mixin(MGPC!(Vector, 3212)()); }
	}
final:
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void VehicleWeaponFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponFireEffects, params.ptr, cast(void*)0);
	}
	void ProcessViewRotationBasedOnSeat(int SeatIndex, float DeltaTime, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Rotator*)&params[8] = out_ViewRotation;
		*cast(Rotator*)&params[20] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotationBasedOnSeat, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[8];
		*out_DeltaRot = *cast(Rotator*)&params[20];
	}
	Rotator LimitViewRotation(Rotator LimitViewRotation, float LimitViewPitchMin, float LimitViewPitchMax)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Rotator*)params.ptr = LimitViewRotation;
		*cast(float*)&params[12] = LimitViewPitchMin;
		*cast(float*)&params[16] = LimitViewPitchMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.LimitViewRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[20];
	}
}
