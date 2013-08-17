module UnrealScript.Engine.Emitter;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Emitter")); }
	private static __gshared Emitter mDefaultProperties;
	@property final static Emitter DefaultProperties() { mixin(MGDPC("Emitter", "Emitter Engine.Default__Emitter")); }
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
			ScriptFunction SetTemplate() { mixin(MGF("mSetTemplate", "Function Engine.Emitter.SetTemplate")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.Emitter.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.Emitter.ReplicatedEvent")); }
			ScriptFunction OnParticleSystemFinished() { mixin(MGF("mOnParticleSystemFinished", "Function Engine.Emitter.OnParticleSystemFinished")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.Emitter.OnToggle")); }
			ScriptFunction OnParticleEventGenerator() { mixin(MGF("mOnParticleEventGenerator", "Function Engine.Emitter.OnParticleEventGenerator")); }
			ScriptFunction ShutDown() { mixin(MGF("mShutDown", "Function Engine.Emitter.ShutDown")); }
			ScriptFunction SetFloatParameter() { mixin(MGF("mSetFloatParameter", "Function Engine.Emitter.SetFloatParameter")); }
			ScriptFunction SetVectorParameter() { mixin(MGF("mSetVectorParameter", "Function Engine.Emitter.SetVectorParameter")); }
			ScriptFunction SetColorParameter() { mixin(MGF("mSetColorParameter", "Function Engine.Emitter.SetColorParameter")); }
			ScriptFunction SetExtColorParameter() { mixin(MGF("mSetExtColorParameter", "Function Engine.Emitter.SetExtColorParameter")); }
			ScriptFunction SetActorParameter() { mixin(MGF("mSetActorParameter", "Function Engine.Emitter.SetActorParameter")); }
			ScriptFunction OnSetParticleSysParam() { mixin(MGF("mOnSetParticleSysParam", "Function Engine.Emitter.OnSetParticleSysParam")); }
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF("mShouldSaveForCheckpoint", "Function Engine.Emitter.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF("mCreateCheckpointRecord", "Function Engine.Emitter.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF("mApplyCheckpointRecord", "Function Engine.Emitter.ApplyCheckpointRecord")); }
			ScriptFunction HideSelf() { mixin(MGF("mHideSelf", "Function Engine.Emitter.HideSelf")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Emitter.CheckpointRecord")); }
		@property final
		{
			bool bIsActive() { mixin(MGBPS(0, 0x1)); }
			bool bIsActive(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			// WARNING: Property 'ParticleSystemComponent' has the same name as a defined type!
		}
		bool bCurrentlyActive() { mixin(MGBPC(484, 0x4)); }
		bool bCurrentlyActive(bool val) { mixin(MSBPC(484, 0x4)); }
		bool bPostUpdateTickGroup() { mixin(MGBPC(484, 0x2)); }
		bool bPostUpdateTickGroup(bool val) { mixin(MSBPC(484, 0x2)); }
		bool bDestroyOnSystemFinish() { mixin(MGBPC(484, 0x1)); }
		bool bDestroyOnSystemFinish(bool val) { mixin(MSBPC(484, 0x1)); }
	}
final:
	void SetTemplate(ParticleSystem NewTemplate, bool* bDestroyOnFinish = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		if (bDestroyOnFinish !is null)
			*cast(bool*)&params[4] = *bDestroyOnFinish;
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
	void CreateCheckpointRecord(ref Emitter.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Emitter.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(Emitter.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in Emitter.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Emitter.CheckpointRecord*)params.ptr = cast(Emitter.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
	void HideSelf()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSelf, cast(void*)0, cast(void*)0);
	}
}
