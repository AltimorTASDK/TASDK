module UnrealScript.TribesGame.TrProj_HavocPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.TribesGame.TrProj_TrackingMissile;

extern(C++) interface TrProj_HavocPilot : TrProjectile
{
public extern(D):
final:
	float CalculateHijackMetric(TrProj_TrackingMissile Tracker)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrProj_TrackingMissile*)params.ptr = Tracker;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108432], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108435], cast(void*)0, cast(void*)0);
	}
	void HijackMissileGuidance()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108436], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108438], cast(void*)0, cast(void*)0);
	}
}
