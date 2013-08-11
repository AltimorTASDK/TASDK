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
	struct CheckpointRecord
	{
		public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bIsActive[4];
	}
	public @property final bool bCurrentlyActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x4) != 0; }
	public @property final bool bCurrentlyActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x4; } return val; }
	public @property final bool bPostUpdateTickGroup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x2) != 0; }
	public @property final bool bPostUpdateTickGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x2; } return val; }
	public @property final bool bDestroyOnSystemFinish() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
	public @property final bool bDestroyOnSystemFinish(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	final void SetTemplate(ParticleSystem NewTemplate, bool bDestroyOnFinish)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		*cast(bool*)&params[4] = bDestroyOnFinish;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15147], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15150], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15151], params.ptr, cast(void*)0);
	}
	final void OnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* FinishedComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = FinishedComponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15153], params.ptr, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15155], params.ptr, cast(void*)0);
	}
	final void OnParticleEventGenerator(SeqAct_ParticleEventGenerator Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ParticleEventGenerator*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15157], params.ptr, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15159], cast(void*)0, cast(void*)0);
	}
	final void SetFloatParameter(ScriptName ParameterName, float Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15160], params.ptr, cast(void*)0);
	}
	final void SetVectorParameter(ScriptName ParameterName, Vector Param)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15163], params.ptr, cast(void*)0);
	}
	final void SetColorParameter(ScriptName ParameterName, UObject.Color Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.Color*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15166], params.ptr, cast(void*)0);
	}
	final void SetExtColorParameter(ScriptName ParameterName, ubyte Red, ubyte Green, ubyte Blue, ubyte Alpha)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		params[8] = Red;
		params[9] = Green;
		params[10] = Blue;
		params[11] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15169], params.ptr, cast(void*)0);
	}
	final void SetActorParameter(ScriptName ParameterName, Actor Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Actor*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15176], params.ptr, cast(void*)0);
	}
	final void OnSetParticleSysParam(SeqAct_SetParticleSysParam Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetParticleSysParam*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15179], params.ptr, cast(void*)0);
	}
	final bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15187], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CreateCheckpointRecord(Emitter.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Emitter.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15189], params.ptr, cast(void*)0);
		*Record = *cast(Emitter.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(Emitter.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Emitter.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15191], params.ptr, cast(void*)0);
		*Record = *cast(Emitter.CheckpointRecord*)params.ptr;
	}
	final void HideSelf()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15193], cast(void*)0, cast(void*)0);
	}
}
