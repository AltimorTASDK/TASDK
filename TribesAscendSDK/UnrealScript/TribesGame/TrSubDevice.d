module UnrealScript.TribesGame.TrSubDevice;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrSubDevice : TrDevice
{
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112994], cast(void*)0, cast(void*)0);
	}
	final Actor.ImpactInfo CalcWeaponFire(Vector StartTrace, Vector EndTrace, ScriptArray!(Actor.ImpactInfo)* ImpactList, Vector Extent)
	{
		ubyte params[128];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[24] = *ImpactList;
		*cast(Vector*)&params[36] = Extent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112995], params.ptr, cast(void*)0);
		*ImpactList = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[24];
		return *cast(Actor.ImpactInfo*)&params[48];
	}
}
