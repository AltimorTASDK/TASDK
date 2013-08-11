module UnrealScript.GameFramework.GameCrowdAttractor;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdForcePoint;

extern(C++) interface GameCrowdAttractor : GameCrowdForcePoint
{
public extern(D):
	@property final
	{
		@property final auto ref float Attraction() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		bool bAttractionFalloff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bAttractionFalloff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	}
	final Vector AppliedForce(GameCrowdAgent Agent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31213], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
