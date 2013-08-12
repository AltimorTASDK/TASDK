module UnrealScript.TribesGame.TrVehicle_Tank;

import ScriptClasses;
import UnrealScript.Engine.CameraShake;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicle_Tank : TrVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_Tank")); }
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
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_Tank.PostInitAnimTree")); }
			ScriptFunction VehicleWeaponFireEffects() { return mVehicleWeaponFireEffects ? mVehicleWeaponFireEffects : (mVehicleWeaponFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_Tank.VehicleWeaponFireEffects")); }
			ScriptFunction ProcessViewRotationBasedOnSeat() { return mProcessViewRotationBasedOnSeat ? mProcessViewRotationBasedOnSeat : (mProcessViewRotationBasedOnSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_Tank.ProcessViewRotationBasedOnSeat")); }
			ScriptFunction LimitViewRotation() { return mLimitViewRotation ? mLimitViewRotation : (mLimitViewRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_Tank.LimitViewRotation")); }
		}
	}
	@property final auto ref
	{
		float m_CameraShakeEffectiveRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 3244); }
		CameraShake m_FireCameraShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 3240); }
		ubyte GunnerFiringMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 3237); }
		ubyte GunnerFlashCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 3236); }
		Rotator GunnerWeaponRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3224); }
		Vector GunnerFlashLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3212); }
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
	void ProcessViewRotationBasedOnSeat(int SeatIndex, float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Rotator*)&params[8] = *out_ViewRotation;
		*cast(Rotator*)&params[20] = *out_DeltaRot;
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
