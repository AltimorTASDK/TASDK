module UnrealScript.UTGame.UTDmgType_Burning;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_Burning : UTDamageType
{
public extern(D):
final:
	void SpawnHitEffect(Pawn P, float Damage, Vector Momentum, ScriptName BoneName, Vector HitLocation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		*cast(Vector*)&params[8] = Momentum;
		*cast(ScriptName*)&params[20] = BoneName;
		*cast(Vector*)&params[28] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47069], params.ptr, cast(void*)0);
	}
	float GetHitEffectDuration(Pawn P, float Damage)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47080], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
