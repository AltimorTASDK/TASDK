module UnrealScript.Engine.Path_WithinDistanceEnvelope;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_WithinDistanceEnvelope : PathConstraint
{
public extern(D):
	@property final
	{
		auto ref
		{
			Vector EnvelopeTestPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
			float SoftStartPenalty() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float MinDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			float MaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
		}
		bool bOnlyThrowOutNodesThatLeaveEnvelope() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bOnlyThrowOutNodesThatLeaveEnvelope(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
final:
	bool StayWithinEnvelopeToLoc(Pawn P, Vector InEnvelopeTestPoint, float InMaxDistance, float InMinDistance, bool bInSoft, float InSoftStartPenalty, bool bOnlyTossOutSpecsThatLeave)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Vector*)&params[4] = InEnvelopeTestPoint;
		*cast(float*)&params[16] = InMaxDistance;
		*cast(float*)&params[20] = InMinDistance;
		*cast(bool*)&params[24] = bInSoft;
		*cast(float*)&params[28] = InSoftStartPenalty;
		*cast(bool*)&params[32] = bOnlyTossOutSpecsThatLeave;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24004], params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24014], cast(void*)0, cast(void*)0);
	}
}
