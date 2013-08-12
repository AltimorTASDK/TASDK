module UnrealScript.TribesGame.TrProj_MIRVLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_MIRVLauncher : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_MIRVLauncher")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetRandomSpread;
			ScriptFunction mSpawnSecondaryProjectile;
			ScriptFunction mExplode;
			ScriptFunction mBounce;
		}
		public @property static final
		{
			ScriptFunction GetRandomSpread() { return mGetRandomSpread ? mGetRandomSpread : (mGetRandomSpread = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_MIRVLauncher.GetRandomSpread")); }
			ScriptFunction SpawnSecondaryProjectile() { return mSpawnSecondaryProjectile ? mSpawnSecondaryProjectile : (mSpawnSecondaryProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_MIRVLauncher.SpawnSecondaryProjectile")); }
			ScriptFunction Explode() { return mExplode ? mExplode : (mExplode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_MIRVLauncher.Explode")); }
			ScriptFunction Bounce() { return mBounce ? mBounce : (mBounce = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_MIRVLauncher.Bounce")); }
		}
	}
	@property final auto ref
	{
		int m_nSecondaryExplosions() { return *cast(int*)(cast(size_t)cast(void*)this + 888); }
		ScriptClass m_SecondaryProjectile() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 884); }
	}
final:
	Rotator GetRandomSpread(Rotator BaseDirection)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseDirection;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRandomSpread, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	void SpawnSecondaryProjectile(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnSecondaryProjectile, params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void Bounce(Actor Other, Vector WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = WallNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Bounce, params.ptr, cast(void*)0);
	}
}
