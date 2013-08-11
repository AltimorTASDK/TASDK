module UnrealScript.TribesGame.TrProj_MIRVLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_MIRVLauncher : TrProj_Grenade
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108677], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	void SpawnSecondaryProjectile(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108687], params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108690], params.ptr, cast(void*)0);
	}
	void Bounce(Actor Other, Vector WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = WallNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108695], params.ptr, cast(void*)0);
	}
}
