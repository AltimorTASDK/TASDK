module UnrealScript.Engine.AnimNotify_Trails;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Trails : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_Trails")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetNumSteps;
		public @property static final ScriptFunction GetNumSteps() { return mGetNumSteps ? mGetNumSteps : (mGetNumSteps = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNotify_Trails.GetNumSteps")); }
	}
	struct TrailSamplePoint
	{
		private ubyte __buffer__[76];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNotify_Trails.TrailSamplePoint")); }
		@property final auto ref
		{
			AnimNotify_Trails.TrailSocketSamplePoint SecondEdgeSample() { return *cast(AnimNotify_Trails.TrailSocketSamplePoint*)(cast(size_t)&this + 52); }
			AnimNotify_Trails.TrailSocketSamplePoint ControlPointSample() { return *cast(AnimNotify_Trails.TrailSocketSamplePoint*)(cast(size_t)&this + 28); }
			AnimNotify_Trails.TrailSocketSamplePoint FirstEdgeSample() { return *cast(AnimNotify_Trails.TrailSocketSamplePoint*)(cast(size_t)&this + 4); }
			float RelativeTime() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct TrailSample
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNotify_Trails.TrailSample")); }
		@property final auto ref
		{
			Vector SecondEdgeSample() { return *cast(Vector*)(cast(size_t)&this + 28); }
			Vector ControlPointSample() { return *cast(Vector*)(cast(size_t)&this + 16); }
			Vector FirstEdgeSample() { return *cast(Vector*)(cast(size_t)&this + 4); }
			float RelativeTime() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct TrailSocketSamplePoint
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNotify_Trails.TrailSocketSamplePoint")); }
		@property final auto ref
		{
			Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 12); }
			Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimNotify_Trails.TrailSamplePoint) TrailSampleData() { return *cast(ScriptArray!(AnimNotify_Trails.TrailSamplePoint)*)(cast(size_t)cast(void*)this + 108); }
			ScriptArray!(AnimNotify_Trails.TrailSample) TrailSampledData() { return *cast(ScriptArray!(AnimNotify_Trails.TrailSample)*)(cast(size_t)cast(void*)this + 124); }
			AnimNodeSequence AnimNodeSeq() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 144); }
			float TimeStep() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			float CurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float SamplesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float SampleTimeStep() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float EndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float LastStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			ScriptName SecondEdgeSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 88); }
			ScriptName ControlPointSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
			ScriptName FirstEdgeSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
			ParticleSystem PSTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bResampleRequired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
		bool bResampleRequired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
		bool bSkipIfOwnerIsHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
		bool bSkipIfOwnerIsHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
		bool bPreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bPreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
		bool bIsExtremeContent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bIsExtremeContent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
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
