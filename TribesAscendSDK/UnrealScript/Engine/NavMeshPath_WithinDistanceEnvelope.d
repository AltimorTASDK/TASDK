module UnrealScript.Engine.NavMeshPath_WithinDistanceEnvelope;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_WithinDistanceEnvelope : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshPath_WithinDistanceEnvelope")()); }
	private static __gshared NavMeshPath_WithinDistanceEnvelope mDefaultProperties;
	@property final static NavMeshPath_WithinDistanceEnvelope DefaultProperties() { mixin(MGDPC!(NavMeshPath_WithinDistanceEnvelope, "NavMeshPath_WithinDistanceEnvelope Engine.Default__NavMeshPath_WithinDistanceEnvelope")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStayWithinEnvelopeToLoc;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction StayWithinEnvelopeToLoc() { mixin(MGF!("mStayWithinEnvelopeToLoc", "Function Engine.NavMeshPath_WithinDistanceEnvelope.StayWithinEnvelopeToLoc")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.NavMeshPath_WithinDistanceEnvelope.Recycle")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector EnvelopeTestPoint() { mixin(MGPC!(Vector, 96)()); }
			float SoftStartPenalty() { mixin(MGPC!(float, 92)()); }
			float MinDistance() { mixin(MGPC!(float, 84)()); }
			float MaxDistance() { mixin(MGPC!(float, 80)()); }
		}
		bool bOnlyThrowOutNodesThatLeaveEnvelope() { mixin(MGBPC!(88, 0x2)()); }
		bool bOnlyThrowOutNodesThatLeaveEnvelope(bool val) { mixin(MSBPC!(88, 0x2)()); }
		bool bSoft() { mixin(MGBPC!(88, 0x1)()); }
		bool bSoft(bool val) { mixin(MSBPC!(88, 0x1)()); }
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
