module UnrealScript.Engine.Emitter;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.SeqAct_SetParticleSysParam;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_ParticleEventGenerator;

extern(C++) interface Emitter : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Emitter")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTemplate;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnParticleSystemFinished;
			ScriptFunction mOnToggle;
			ScriptFunction mOnParticleEventGenerator;
			ScriptFunction mShutDown;
			ScriptFunction mSetFloatParameter;
			ScriptFunction mSetVectorParameter;
			ScriptFunction mSetColorParameter;
			ScriptFunction mSetExtColorParameter;
			ScriptFunction mSetActorParameter;
			ScriptFunction mOnSetParticleSysParam;
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
			ScriptFunction mHideSelf;
		}
		public @property static final
		{
			ScriptFunction SetTemplate() { return mSetTemplate ? mSetTemplate : (mSetTemplate = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.SetTemplate")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.ReplicatedEvent")); }
			ScriptFunction OnParticleSystemFinished() { return mOnParticleSystemFinished ? mOnParticleSystemFinished : (mOnParticleSystemFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.OnParticleSystemFinished")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.OnToggle")); }
			ScriptFunction OnParticleEventGenerator() { return mOnParticleEventGenerator ? mOnParticleEventGenerator : (mOnParticleEventGenerator = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.OnParticleEventGenerator")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.ShutDown")); }
			ScriptFunction SetFloatParameter() { return mSetFloatParameter ? mSetFloatParameter : (mSetFloatParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.SetFloatParameter")); }
			ScriptFunction SetVectorParameter() { return mSetVectorParameter ? mSetVectorParameter : (mSetVectorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.SetVectorParameter")); }
			ScriptFunction SetColorParameter() { return mSetColorParameter ? mSetColorParameter : (mSetColorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.SetColorParameter")); }
			ScriptFunction SetExtColorParameter() { return mSetExtColorParameter ? mSetExtColorParameter : (mSetExtColorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.SetExtColorParameter")); }
			ScriptFunction SetActorParameter() { return mSetActorParameter ? mSetActorParameter : (mSetActorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.SetActorParameter")); }
			ScriptFunction OnSetParticleSysParam() { return mOnSetParticleSysParam ? mOnSetParticleSysParam : (mOnSetParticleSysParam = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.OnSetParticleSysParam")); }
			ScriptFunction ShouldSaveForCheckpoint() { return mShouldSaveForCheckpoint ? mShouldSaveForCheckpoint : (mShouldSaveForCheckpoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { return mCreateCheckpointRecord ? mCreateCheckpointRecord : (mCreateCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { return mApplyCheckpointRecord ? mApplyCheckpointRecord : (mApplyCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.ApplyCheckpointRecord")); }
			ScriptFunction HideSelf() { return mHideSelf ? mHideSelf : (mHideSelf = ScriptObject.Find!(ScriptFunction)("Function Engine.Emitter.HideSelf")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Emitter.CheckpointRecord")); }
		@property final
		{
			bool bIsActive() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		bool bCurrentlyActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x4) != 0; }
		bool bCurrentlyActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x4; } return val; }
		bool bPostUpdateTickGroup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x2) != 0; }
		bool bPostUpdateTickGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x2; } return val; }
		bool bDestroyOnSystemFinish() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
		bool bDestroyOnSystemFinish(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	}
final:
	void SetTemplate(ParticleSystem NewTemplate, bool bDestroyOnFinish)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		*cast(bool*)&params[4] = bDestroyOnFinish;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* FinishedComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = FinishedComponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnParticleSystemFinished, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void OnParticleEventGenerator(SeqAct_ParticleEventGenerator Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ParticleEventGenerator*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnParticleEventGenerator, params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	void SetFloatParameter(ScriptName ParameterName, float Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloatParameter, params.ptr, cast(void*)0);
	}
	void SetVectorParameter(ScriptName ParameterName, Vector Param)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorParameter, params.ptr, cast(void*)0);
	}
	void SetColorParameter(ScriptName ParameterName, UObject.Color Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.Color*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetColorParameter, params.ptr, cast(void*)0);
	}
	void SetExtColorParameter(ScriptName ParameterName, ubyte Red, ubyte Green, ubyte Blue, ubyte Alpha)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		params[8] = Red;
		params[9] = Green;
		params[10] = Blue;
		params[11] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetExtColorParameter, params.ptr, cast(void*)0);
	}
	void SetActorParameter(ScriptName ParameterName, Actor Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Actor*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActorParameter, params.ptr, cast(void*)0);
	}
	void OnSetParticleSysParam(SeqAct_SetParticleSysParam Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetParticleSysParam*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetParticleSysParam, params.ptr, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(Emitter.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Emitter.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(Emitter.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(Emitter.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Emitter.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(Emitter.CheckpointRecord*)params.ptr;
	}
	void HideSelf()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSelf, cast(void*)0, cast(void*)0);
	}
}
