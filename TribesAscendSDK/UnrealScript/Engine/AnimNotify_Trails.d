module UnrealScript.Engine.AnimNotify_Trails;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Trails : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_Trails")()); }
	private static __gshared AnimNotify_Trails mDefaultProperties;
	@property final static AnimNotify_Trails DefaultProperties() { mixin(MGDPC!(AnimNotify_Trails, "AnimNotify_Trails Engine.Default__AnimNotify_Trails")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetNumSteps;
		public @property static final ScriptFunction GetNumSteps() { mixin(MGF!("mGetNumSteps", "Function Engine.AnimNotify_Trails.GetNumSteps")()); }
	}
	struct TrailSamplePoint
	{
		private ubyte __buffer__[76];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNotify_Trails.TrailSamplePoint")()); }
		@property final auto ref
		{
			AnimNotify_Trails.TrailSocketSamplePoint SecondEdgeSample() { mixin(MGPS!(AnimNotify_Trails.TrailSocketSamplePoint, 52)()); }
			AnimNotify_Trails.TrailSocketSamplePoint ControlPointSample() { mixin(MGPS!(AnimNotify_Trails.TrailSocketSamplePoint, 28)()); }
			AnimNotify_Trails.TrailSocketSamplePoint FirstEdgeSample() { mixin(MGPS!(AnimNotify_Trails.TrailSocketSamplePoint, 4)()); }
			float RelativeTime() { mixin(MGPS!(float, 0)()); }
		}
	}
	struct TrailSample
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNotify_Trails.TrailSample")()); }
		@property final auto ref
		{
			Vector SecondEdgeSample() { mixin(MGPS!(Vector, 28)()); }
			Vector ControlPointSample() { mixin(MGPS!(Vector, 16)()); }
			Vector FirstEdgeSample() { mixin(MGPS!(Vector, 4)()); }
			float RelativeTime() { mixin(MGPS!(float, 0)()); }
		}
	}
	struct TrailSocketSamplePoint
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNotify_Trails.TrailSocketSamplePoint")()); }
		@property final auto ref
		{
			Vector Velocity() { mixin(MGPS!(Vector, 12)()); }
			Vector Position() { mixin(MGPS!(Vector, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimNotify_Trails.TrailSamplePoint) TrailSampleData() { mixin(MGPC!(ScriptArray!(AnimNotify_Trails.TrailSamplePoint), 108)()); }
			ScriptArray!(AnimNotify_Trails.TrailSample) TrailSampledData() { mixin(MGPC!(ScriptArray!(AnimNotify_Trails.TrailSample), 124)()); }
			AnimNodeSequence AnimNodeSeq() { mixin(MGPC!(AnimNodeSequence, 144)()); }
			float TimeStep() { mixin(MGPC!(float, 140)()); }
			float CurrentTime() { mixin(MGPC!(float, 136)()); }
			float SamplesPerSecond() { mixin(MGPC!(float, 120)()); }
			float SampleTimeStep() { mixin(MGPC!(float, 104)()); }
			float EndTime() { mixin(MGPC!(float, 100)()); }
			float LastStartTime() { mixin(MGPC!(float, 96)()); }
			ScriptName SecondEdgeSocketName() { mixin(MGPC!(ScriptName, 88)()); }
			ScriptName ControlPointSocketName() { mixin(MGPC!(ScriptName, 80)()); }
			ScriptName FirstEdgeSocketName() { mixin(MGPC!(ScriptName, 72)()); }
			ParticleSystem PSTemplate() { mixin(MGPC!(ParticleSystem, 64)()); }
		}
		bool bResampleRequired() { mixin(MGBPC!(68, 0x8)()); }
		bool bResampleRequired(bool val) { mixin(MSBPC!(68, 0x8)()); }
		bool bSkipIfOwnerIsHidden() { mixin(MGBPC!(68, 0x4)()); }
		bool bSkipIfOwnerIsHidden(bool val) { mixin(MSBPC!(68, 0x4)()); }
		bool bPreview() { mixin(MGBPC!(68, 0x2)()); }
		bool bPreview(bool val) { mixin(MSBPC!(68, 0x2)()); }
		bool bIsExtremeContent() { mixin(MGBPC!(68, 0x1)()); }
		bool bIsExtremeContent(bool val) { mixin(MSBPC!(68, 0x1)()); }
	}
	final int GetNumSteps(int InLastTrailIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InLastTrailIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumSteps, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
