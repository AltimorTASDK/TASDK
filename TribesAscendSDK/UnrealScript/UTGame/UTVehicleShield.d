module UnrealScript.UTGame.UTVehicleShield;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKWeaponShield;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface UTVehicleShield : UDKWeaponShield
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVehicleShield")()); }
	private static __gshared UTVehicleShield mDefaultProperties;
	@property final static UTVehicleShield DefaultProperties() { mixin(MGDPC!(UTVehicleShield, "UTVehicleShield UTGame.Default__UTVehicleShield")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetActive;
			ScriptFunction mShieldFullyOnline;
			ScriptFunction mTakeDamage;
		}
		public @property static final
		{
			ScriptFunction SetActive() { mixin(MGF!("mSetActive", "Function UTGame.UTVehicleShield.SetActive")()); }
			ScriptFunction ShieldFullyOnline() { mixin(MGF!("mShieldFullyOnline", "Function UTGame.UTVehicleShield.ShieldFullyOnline")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function UTGame.UTVehicleShield.TakeDamage")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float ShieldActivatedTime() { mixin(MGPC!(float, 496)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ShieldEffectComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AmbientComponent'!
			SoundCue DeactivatedSound() { mixin(MGPC!(SoundCue, 484)()); }
			SoundCue ActivatedSound() { mixin(MGPC!(SoundCue, 480)()); }
		}
		bool bFullyActive() { mixin(MGBPC!(500, 0x1)()); }
		bool bFullyActive(bool val) { mixin(MSBPC!(500, 0x1)()); }
	}
final:
	void SetActive(bool bNowActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActive, params.ptr, cast(void*)0);
	}
	void ShieldFullyOnline()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShieldFullyOnline, cast(void*)0, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
}
