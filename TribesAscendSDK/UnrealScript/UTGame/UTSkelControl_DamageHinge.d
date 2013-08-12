module UnrealScript.UTGame.UTSkelControl_DamageHinge;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_DamageHinge;

extern(C++) interface UTSkelControl_DamageHinge : UDKSkelControl_DamageHinge
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_DamageHinge")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBreakApart;
			ScriptFunction mBreakApartOnDeath;
		}
		public @property static final
		{
			ScriptFunction BreakApart() { return mBreakApart ? mBreakApart : (mBreakApart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSkelControl_DamageHinge.BreakApart")); }
			ScriptFunction BreakApartOnDeath() { return mBreakApartOnDeath ? mBreakApartOnDeath : (mBreakApartOnDeath = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSkelControl_DamageHinge.BreakApartOnDeath")); }
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
