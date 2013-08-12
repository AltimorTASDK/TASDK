module UnrealScript.TribesGame.TrDevice_Claymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;
import UnrealScript.Engine.Projectile;

extern(C++) interface TrDevice_Claymore : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Claymore")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mProjectileFire;
		}
		public @property static final
		{
			ScriptFunction GetPhysicalFireStartLoc() { return mGetPhysicalFireStartLoc ? mGetPhysicalFireStartLoc : (mGetPhysicalFireStartLoc = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Claymore.GetPhysicalFireStartLoc")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Claymore.ProjectileFire")); }
		}
	}
	@property final auto ref float m_fWorldZPlacementOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
final:
	Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
}
