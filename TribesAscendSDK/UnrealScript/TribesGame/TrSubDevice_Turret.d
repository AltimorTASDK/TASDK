module UnrealScript.TribesGame.TrSubDevice_Turret;

import ScriptClasses;
import UnrealScript.TribesGame.TrSubDevice;

extern(C++) interface TrSubDevice_Turret : TrSubDevice
{
	final Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113009], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113012], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
}
