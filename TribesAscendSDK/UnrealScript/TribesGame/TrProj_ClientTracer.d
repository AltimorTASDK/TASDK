module UnrealScript.TribesGame.TrProj_ClientTracer;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface TrProj_ClientTracer : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ClientTracer")); }
	private static __gshared TrProj_ClientTracer mDefaultProperties;
	@property final static TrProj_ClientTracer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ClientTracer)("TrProj_ClientTracer TribesGame.Default__TrProj_ClientTracer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitProjectile;
			ScriptFunction mGetExplosionSound;
			ScriptFunction mProcessTouch;
		}
		public @property static final
		{
			ScriptFunction InitProjectile() { return mInitProjectile ? mInitProjectile : (mInitProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_ClientTracer.InitProjectile")); }
			ScriptFunction GetExplosionSound() { return mGetExplosionSound ? mGetExplosionSound : (mGetExplosionSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_ClientTracer.GetExplosionSound")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_ClientTracer.ProcessTouch")); }
		}
	}
	@property final auto ref ScriptClass m_InheritedClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 816); }
final:
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	SoundCue GetExplosionSound(PhysicalMaterial HitMaterial, Actor HitActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		*cast(Actor*)&params[4] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetExplosionSound, params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
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
}
