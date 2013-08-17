module UnrealScript.Engine.Path_WithinDistanceEnvelope;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_WithinDistanceEnvelope : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Path_WithinDistanceEnvelope")()); }
	private static __gshared Path_WithinDistanceEnvelope mDefaultProperties;
	@property final static Path_WithinDistanceEnvelope DefaultProperties() { mixin(MGDPC!(Path_WithinDistanceEnvelope, "Path_WithinDistanceEnvelope Engine.Default__Path_WithinDistanceEnvelope")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStayWithinEnvelopeToLoc;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction StayWithinEnvelopeToLoc() { mixin(MGF!("mStayWithinEnvelopeToLoc", "Function Engine.Path_WithinDistanceEnvelope.StayWithinEnvelopeToLoc")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.Path_WithinDistanceEnvelope.Recycle")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector EnvelopeTestPoint() { mixin(MGPC!(Vector, 84)()); }
			float SoftStartPenalty() { mixin(MGPC!(float, 80)()); }
			float MinDistance() { mixin(MGPC!(float, 72)()); }
			float MaxDistance() { mixin(MGPC!(float, 68)()); }
		}
		bool bOnlyThrowOutNodesThatLeaveEnvelope() { mixin(MGBPC!(76, 0x2)()); }
		bool bOnlyThrowOutNodesThatLeaveEnvelope(bool val) { mixin(MSBPC!(76, 0x2)()); }
		bool bSoft() { mixin(MGBPC!(76, 0x1)()); }
		bool bSoft(bool val) { mixin(MSBPC!(76, 0x1)()); }
	}
final:
	static bool StayWithinEnvelopeToLoc(Pawn P, Vector InEnvelopeTestPoint, float InMaxDistance, float InMinDistance, bool bInSoft, float InSoftStartPenalty, bool bOnlyTossOutSpecsThatLeave)
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
		StaticClass.ProcessEvent(Functions.StayWithinEnvelopeToLoc, params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
