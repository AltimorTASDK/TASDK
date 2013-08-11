module UnrealScript.TribesGame.TrDevice_Claymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;
import UnrealScript.Engine.Projectile;

extern(C++) interface TrDevice_Claymore : TrDevice_AutoFire
{
public extern(D):
	@property final auto ref float m_fWorldZPlacementOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
final:
	Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81013], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81017], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
}
