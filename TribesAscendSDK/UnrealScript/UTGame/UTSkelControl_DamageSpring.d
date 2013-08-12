module UnrealScript.UTGame.UTSkelControl_DamageSpring;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_DamageSpring;

extern(C++) interface UTSkelControl_DamageSpring : UDKSkelControl_DamageSpring
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_DamageSpring")); }
	private static __gshared UTSkelControl_DamageSpring mDefaultProperties;
	@property final static UTSkelControl_DamageSpring DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_DamageSpring)("UTSkelControl_DamageSpring UTGame.Default__UTSkelControl_DamageSpring")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBreakApart;
			ScriptFunction mBreakApartOnDeath;
		}
		public @property static final
		{
			ScriptFunction BreakApart() { return mBreakApart ? mBreakApart : (mBreakApart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSkelControl_DamageSpring.BreakApart")); }
			ScriptFunction BreakApartOnDeath() { return mBreakApartOnDeath ? mBreakApartOnDeath : (mBreakApartOnDeath = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSkelControl_DamageSpring.BreakApartOnDeath")); }
		}
	}
final:
	void BreakApart(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakApart, params.ptr, cast(void*)0);
	}
	void BreakApartOnDeath(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakApartOnDeath, params.ptr, cast(void*)0);
	}
}
