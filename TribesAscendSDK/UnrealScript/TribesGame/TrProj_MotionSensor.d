module UnrealScript.TribesGame.TrProj_MotionSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;

extern(C++) interface TrProj_MotionSensor : TrProj_Mine
{
public extern(D):
final:
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108757], params.ptr, cast(void*)0);
	}
	void DetonateObsolete(bool bDetonateFromDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDetonateFromDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108762], params.ptr, cast(void*)0);
	}
}
