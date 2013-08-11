module UnrealScript.TribesGame.TrProj_FlareGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.TribesGame.TrProj_TrackingMissile;

extern(C++) interface TrProj_FlareGrenade : TrProj_Grenade
{
public extern(D):
final:
	float CalculateHijackMetric(TrProj_TrackingMissile pMissile)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrProj_TrackingMissile*)params.ptr = pMissile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108360], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108365], cast(void*)0, cast(void*)0);
	}
	void HijackMissileGuidance()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108366], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108371], cast(void*)0, cast(void*)0);
	}
}
