module UnrealScript.GameFramework.GameCrowdRepulsor;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdForcePoint;

extern(C++) interface GameCrowdRepulsor : GameCrowdForcePoint
{
	public @property final bool bAttractionFalloff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
	public @property final bool bAttractionFalloff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	public @property final auto ref float Repulsion() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	final Vector AppliedForce(GameCrowdAgent Agent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31507], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
