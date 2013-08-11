module UnrealScript.TribesGame.TrProj_SpikeLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_StickyGrenade;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_SpikeLauncher : TrProj_StickyGrenade
{
public extern(D):
	@property final
	{
		auto ref
		{
			ParticleSystem ProjExplosionTemplateAir() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 904); }
			ScriptClass m_ThirdProjectile() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 896); }
			ScriptClass m_SecondProjectile() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 892); }
		}
		bool m_bInAirHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x1) != 0; }
		bool m_bInAirHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x1; } return val; }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109140], cast(void*)0, cast(void*)0);
	}
	bool StickToTarget(Actor Target, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109141], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109146], params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109150], params.ptr, cast(void*)0);
	}
	void SpawnSecondaryProjectile(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109153], params.ptr, cast(void*)0);
	}
}
