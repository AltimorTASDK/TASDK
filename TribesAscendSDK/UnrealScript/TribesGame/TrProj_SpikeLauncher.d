module UnrealScript.TribesGame.TrProj_SpikeLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_StickyGrenade;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_SpikeLauncher : TrProj_StickyGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_SpikeLauncher")); }
	private static __gshared TrProj_SpikeLauncher mDefaultProperties;
	@property final static TrProj_SpikeLauncher DefaultProperties() { mixin(MGDPC("TrProj_SpikeLauncher", "TrProj_SpikeLauncher TribesGame.Default__TrProj_SpikeLauncher")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mStickToTarget;
			ScriptFunction mProcessTouch;
			ScriptFunction mExplode;
			ScriptFunction mSpawnSecondaryProjectile;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function TribesGame.TrProj_SpikeLauncher.PreBeginPlay")); }
			ScriptFunction StickToTarget() { mixin(MGF("mStickToTarget", "Function TribesGame.TrProj_SpikeLauncher.StickToTarget")); }
			ScriptFunction ProcessTouch() { mixin(MGF("mProcessTouch", "Function TribesGame.TrProj_SpikeLauncher.ProcessTouch")); }
			ScriptFunction Explode() { mixin(MGF("mExplode", "Function TribesGame.TrProj_SpikeLauncher.Explode")); }
			ScriptFunction SpawnSecondaryProjectile() { mixin(MGF("mSpawnSecondaryProjectile", "Function TribesGame.TrProj_SpikeLauncher.SpawnSecondaryProjectile")); }
		}
	}
	@property final
	{
		auto ref
		{
			ParticleSystem ProjExplosionTemplateAir() { mixin(MGPC("ParticleSystem", 904)); }
			ScriptClass m_ThirdProjectile() { mixin(MGPC("ScriptClass", 896)); }
			ScriptClass m_SecondProjectile() { mixin(MGPC("ScriptClass", 892)); }
		}
		bool m_bInAirHit() { mixin(MGBPC(900, 0x1)); }
		bool m_bInAirHit(bool val) { mixin(MSBPC(900, 0x1)); }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool StickToTarget(Actor Target, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.StickToTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTouch, params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void SpawnSecondaryProjectile(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnSecondaryProjectile, params.ptr, cast(void*)0);
	}
}
