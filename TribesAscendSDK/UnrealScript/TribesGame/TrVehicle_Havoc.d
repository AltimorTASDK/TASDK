module UnrealScript.TribesGame.TrVehicle_Havoc;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicle_BaseFlying;
import UnrealScript.UTGame.UTVehicleWeapon;

extern(C++) interface TrVehicle_Havoc : TrVehicle_BaseFlying
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicle_Havoc")()); }
	private static __gshared TrVehicle_Havoc mDefaultProperties;
	@property final static TrVehicle_Havoc DefaultProperties() { mixin(MGDPC!(TrVehicle_Havoc, "TrVehicle_Havoc TribesGame.Default__TrVehicle_Havoc")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mGetWeaponAim;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrVehicle_Havoc.PostBeginPlay")()); }
			ScriptFunction GetWeaponAim() { mixin(MGF!("mGetWeaponAim", "Function TribesGame.TrVehicle_Havoc.GetWeaponAim")()); }
		}
	}
	@property final auto ref
	{
		float m_fPitchAimAngleRotation() { mixin(MGPC!(float, 3296)()); }
		float m_fPitchAimAngle() { mixin(MGPC!(float, 3292)()); }
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
