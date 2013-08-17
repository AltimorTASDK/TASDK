module UnrealScript.TribesGame.TrProj_MIRVLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_MIRVLauncher : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_MIRVLauncher")); }
	private static __gshared TrProj_MIRVLauncher mDefaultProperties;
	@property final static TrProj_MIRVLauncher DefaultProperties() { mixin(MGDPC("TrProj_MIRVLauncher", "TrProj_MIRVLauncher TribesGame.Default__TrProj_MIRVLauncher")); }
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
			ScriptFunction GetRandomSpread() { mixin(MGF("mGetRandomSpread", "Function TribesGame.TrProj_MIRVLauncher.GetRandomSpread")); }
			ScriptFunction SpawnSecondaryProjectile() { mixin(MGF("mSpawnSecondaryProjectile", "Function TribesGame.TrProj_MIRVLauncher.SpawnSecondaryProjectile")); }
			ScriptFunction Explode() { mixin(MGF("mExplode", "Function TribesGame.TrProj_MIRVLauncher.Explode")); }
			ScriptFunction Bounce() { mixin(MGF("mBounce", "Function TribesGame.TrProj_MIRVLauncher.Bounce")); }
		}
	}
	@property final auto ref
	{
		int m_nSecondaryExplosions() { mixin(MGPC("int", 888)); }
		ScriptClass m_SecondaryProjectile() { mixin(MGPC("ScriptClass", 884)); }
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
