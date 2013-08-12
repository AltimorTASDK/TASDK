module UnrealScript.TribesGame.TrVehicle_Havoc;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle_BaseFlying;
import UnrealScript.UTGame.UTVehicleWeapon;

extern(C++) interface TrVehicle_Havoc : TrVehicle_BaseFlying
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_Havoc")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mGetWeaponAim;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_Havoc.PostBeginPlay")); }
			ScriptFunction GetWeaponAim() { return mGetWeaponAim ? mGetWeaponAim : (mGetWeaponAim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_Havoc.GetWeaponAim")); }
		}
	}
	@property final auto ref
	{
		float m_fPitchAimAngleRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 3296); }
		float m_fPitchAimAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 3292); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	Rotator GetWeaponAim(UTVehicleWeapon VWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTVehicleWeapon*)params.ptr = VWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
}
