module UnrealScript.Engine.AnimNotify_Trails;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Trails : AnimNotify
{
	struct TrailSamplePoint
	{
		public @property final auto ref AnimNotify_Trails.TrailSocketSamplePoint SecondEdgeSample() { return *cast(AnimNotify_Trails.TrailSocketSamplePoint*)(cast(size_t)&this + 52); }
		private ubyte __SecondEdgeSample[24];
		public @property final auto ref AnimNotify_Trails.TrailSocketSamplePoint ControlPointSample() { return *cast(AnimNotify_Trails.TrailSocketSamplePoint*)(cast(size_t)&this + 28); }
		private ubyte __ControlPointSample[24];
		public @property final auto ref AnimNotify_Trails.TrailSocketSamplePoint FirstEdgeSample() { return *cast(AnimNotify_Trails.TrailSocketSamplePoint*)(cast(size_t)&this + 4); }
		private ubyte __FirstEdgeSample[24];
		public @property final auto ref float RelativeTime() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __RelativeTime[4];
	}
	struct TrailSample
	{
		public @property final auto ref Vector SecondEdgeSample() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __SecondEdgeSample[12];
		public @property final auto ref Vector ControlPointSample() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __ControlPointSample[12];
		public @property final auto ref Vector FirstEdgeSample() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __FirstEdgeSample[12];
		public @property final auto ref float RelativeTime() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __RelativeTime[4];
	}
	struct TrailSocketSamplePoint
	{
		public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __Velocity[12];
		public @property final auto ref Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Position[12];
	}
	public @property final auto ref ScriptArray!(AnimNotify_Trails.TrailSamplePoint) TrailSampleData() { return *cast(ScriptArray!(AnimNotify_Trails.TrailSamplePoint)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptArray!(AnimNotify_Trails.TrailSample) TrailSampledData() { return *cast(ScriptArray!(AnimNotify_Trails.TrailSample)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref AnimNodeSequence AnimNodeSeq() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float TimeStep() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float CurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float SamplesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float SampleTimeStep() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float EndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float LastStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptName SecondEdgeSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptName ControlPointSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptName FirstEdgeSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool bResampleRequired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
	public @property final bool bResampleRequired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
	public @property final bool bSkipIfOwnerIsHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
	public @property final bool bSkipIfOwnerIsHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
	public @property final bool bPreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
	public @property final bool bPreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
	public @property final bool bIsExtremeContent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bIsExtremeContent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final auto ref ParticleSystem PSTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 64); }
	final int GetNumSteps(int InLastTrailIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InLastTrailIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11457], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
