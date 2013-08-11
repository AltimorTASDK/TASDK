module UnrealScript.Engine.SkeletalMeshActor;

import ScriptClasses;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_AttachToActor;
import UnrealScript.Engine.SeqAct_SetMesh;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.SeqAct_UpdatePhysBonesFromAnim;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SeqAct_SetSkelControlTarget;
import UnrealScript.Engine.SeqAct_SetMaterial;
import UnrealScript.Engine.AnimNotify_ForceField;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify_PlayParticleEffect;
import UnrealScript.Engine.SeqAct_PlayFaceFXAnim;

extern(C++) interface SkeletalMeshActor : Actor
{
	struct SkelMeshActorControlTarget
	{
		public @property final auto ref Actor TargetActor() { return *cast(Actor*)(cast(size_t)&this + 8); }
		private ubyte __TargetActor[4];
		public @property final auto ref ScriptName ControlName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ControlName[8];
	}
	extern(D) struct CheckpointRecord
	{
		public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 16); }
		private ubyte __Rotation[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __Location[12];
		public @property final bool bSavedPosition() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bSavedPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bSavedPosition[4];
		public @property final bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bHidden[4];
		public @property final bool bReplicated() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bReplicated(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bReplicated[4];
	}
	public @property final auto ref ScriptArray!(SkeletalMeshActor.SkelMeshActorControlTarget) ControlTargets() { return *cast(ScriptArray!(SkeletalMeshActor.SkelMeshActorControlTarget)*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref ScriptArray!(InterpGroup) InterpGroupList() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float SavedCurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref ScriptName SavedAnimSeqName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref MaterialInterface ReplicatedMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref SkeletalMesh ReplicatedMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 492); }
	public @property final bool bCollideActors_OldValue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
	public @property final bool bCollideActors_OldValue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
	public @property final bool bForceSaveInCheckpoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
	public @property final bool bForceSaveInCheckpoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
	public @property final bool bShouldDoAnimNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
	public @property final bool bShouldDoAnimNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
	public @property final bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
	public @property final bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26654], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26655], cast(void*)0, cast(void*)0);
	}
	final void UpdateAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26656], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26657], params.ptr, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26659], params.ptr, cast(void*)0);
	}
	final void OnSetMaterial(SeqAct_SetMaterial Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMaterial*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26662], params.ptr, cast(void*)0);
	}
	final void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26664], params.ptr, cast(void*)0);
	}
	final void MAT_BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26666], params.ptr, cast(void*)0);
	}
	final void SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SlotName;
		*cast(int*)&params[8] = ChannelIndex;
		*cast(ScriptName*)&params[12] = InAnimSeqName;
		*cast(float*)&params[20] = InPosition;
		*cast(bool*)&params[24] = bFireNotifies;
		*cast(bool*)&params[28] = bLooping;
		*cast(bool*)&params[32] = bEnableRootMotion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26668], params.ptr, cast(void*)0);
	}
	final void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26677], params.ptr, cast(void*)0);
	}
	final void MAT_FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26679], params.ptr, cast(void*)0);
	}
	final bool PlayActorFaceFXAnim(FaceFXAnimSet AnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = AnimSet;
		*cast(ScriptString*)&params[4] = GroupName;
		*cast(ScriptString*)&params[16] = SeqName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26681], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	final void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26687], cast(void*)0, cast(void*)0);
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* GetFaceFXAudioComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26688], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr;
	}
	final void OnPlayFaceFXAnim(SeqAct_PlayFaceFXAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayFaceFXAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26690], params.ptr, cast(void*)0);
	}
	final FaceFXAsset GetActorFaceFXAsset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26693], params.ptr, cast(void*)0);
		return *cast(FaceFXAsset*)params.ptr;
	}
	final bool IsActorPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26695], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnSetMesh(SeqAct_SetMesh Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMesh*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26697], params.ptr, cast(void*)0);
	}
	final void OnUpdatePhysBonesFromAnim(SeqAct_UpdatePhysBonesFromAnim Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_UpdatePhysBonesFromAnim*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26699], params.ptr, cast(void*)0);
	}
	final void OnSetSkelControlTarget(SeqAct_SetSkelControlTarget Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetSkelControlTarget*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26701], params.ptr, cast(void*)0);
	}
	final void DoKismetAttachment(Actor Attachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Attachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26704], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26711], params.ptr, cast(void*)0);
	}
	final bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26720], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CreateCheckpointRecord(SkeletalMeshActor.CheckpointRecord* Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SkeletalMeshActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26722], params.ptr, cast(void*)0);
		*Record = *cast(SkeletalMeshActor.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(SkeletalMeshActor.CheckpointRecord* Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SkeletalMeshActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26724], params.ptr, cast(void*)0);
		*Record = *cast(SkeletalMeshActor.CheckpointRecord*)params.ptr;
	}
	final bool PlayParticleEffect(AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26726], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SkelMeshActorOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26732], params.ptr, cast(void*)0);
	}
	final bool CreateForceField(AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26734], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
