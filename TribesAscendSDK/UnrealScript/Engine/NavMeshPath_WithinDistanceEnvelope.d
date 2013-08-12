module UnrealScript.Engine.NavMeshPath_WithinDistanceEnvelope;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_WithinDistanceEnvelope : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshPath_WithinDistanceEnvelope")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStayWithinEnvelopeToLoc;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction StayWithinEnvelopeToLoc() { return mStayWithinEnvelopeToLoc ? mStayWithinEnvelopeToLoc : (mStayWithinEnvelopeToLoc = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_WithinDistanceEnvelope.StayWithinEnvelopeToLoc")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_WithinDistanceEnvelope.Recycle")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector EnvelopeTestPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
			float SoftStartPenalty() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float MinDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float MaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bOnlyThrowOutNodesThatLeaveEnvelope() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
		bool bOnlyThrowOutNodesThatLeaveEnvelope(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
		bool bSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
final:
	static bool StayWithinEnvelopeToLoc(NavigationHandle NavHandle, Vector InEnvelopeTestPoint, float InMaxDistance, float InMinDistance, bool bInSoft, float InSoftStartPenalty, bool bOnlyTossOutSpecsThatLeave)
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
		StaticClass.ProcessEvent(Functions.StayWithinEnvelopeToLoc, params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
