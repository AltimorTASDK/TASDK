module UnrealScript.Engine.NavMeshPath_WithinDistanceEnvelope;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_WithinDistanceEnvelope : NavMeshPathConstraint
{
	public @property final auto ref Vector EnvelopeTestPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float SoftStartPenalty() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final bool bOnlyThrowOutNodesThatLeaveEnvelope() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
	public @property final bool bOnlyThrowOutNodesThatLeaveEnvelope(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
	public @property final bool bSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	public @property final auto ref float MinDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float MaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	final bool StayWithinEnvelopeToLoc(NavigationHandle NavHandle, Vector InEnvelopeTestPoint, float InMaxDistance, float InMinDistance, bool bInSoft, float InSoftStartPenalty, bool bOnlyTossOutSpecsThatLeave)
	{
		ubyte params[40];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = InEnvelopeTestPoint;
		*cast(float*)&params[16] = InMaxDistance;
		*cast(float*)&params[20] = InMinDistance;
		*cast(bool*)&params[24] = bInSoft;
		*cast(float*)&params[28] = InSoftStartPenalty;
		*cast(bool*)&params[32] = bOnlyTossOutSpecsThatLeave;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21096], params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21106], cast(void*)0, cast(void*)0);
	}
}
