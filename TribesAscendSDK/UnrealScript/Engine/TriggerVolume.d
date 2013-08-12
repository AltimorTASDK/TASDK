module UnrealScript.Engine.TriggerVolume;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Volume;

extern(C++) interface TriggerVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TriggerVolume")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mStopsProjectile;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.TriggerVolume.PostBeginPlay")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function Engine.TriggerVolume.StopsProjectile")); }
		}
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
