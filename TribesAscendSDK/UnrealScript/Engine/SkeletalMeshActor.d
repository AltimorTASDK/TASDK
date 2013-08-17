module UnrealScript.Engine.SkeletalMeshActor;

import ScriptClasses;
import UnrealScript.Helpers;
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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkeletalMeshActor")()); }
	private static __gshared SkeletalMeshActor mDefaultProperties;
	@property final static SkeletalMeshActor DefaultProperties() { mixin(MGDPC!(SkeletalMeshActor, "SkeletalMeshActor Engine.Default__SkeletalMeshActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mUpdateAnimSetList;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnToggle;
			ScriptFunction mOnSetMaterial;
			ScriptFunction mBeginAnimControl;
			ScriptFunction mMAT_BeginAnimControl;
			ScriptFunction mSetAnimPosition;
			ScriptFunction mFinishAnimControl;
			ScriptFunction mMAT_FinishAnimControl;
			ScriptFunction mPlayActorFaceFXAnim;
			ScriptFunction mStopActorFaceFXAnim;
			ScriptFunction mGetFaceFXAudioComponent;
			ScriptFunction mOnPlayFaceFXAnim;
			ScriptFunction mGetActorFaceFXAsset;
			ScriptFunction mIsActorPlayingFaceFXAnim;
			ScriptFunction mOnSetMesh;
			ScriptFunction mOnUpdatePhysBonesFromAnim;
			ScriptFunction mOnSetSkelControlTarget;
			ScriptFunction mDoKismetAttachment;
			ScriptFunction mTakeDamage;
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
			ScriptFunction mPlayParticleEffect;
			ScriptFunction mSkelMeshActorOnParticleSystemFinished;
			ScriptFunction mCreateForceField;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.SkeletalMeshActor.PostBeginPlay")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.SkeletalMeshActor.Destroyed")()); }
			ScriptFunction UpdateAnimSetList() { mixin(MGF!("mUpdateAnimSetList", "Function Engine.SkeletalMeshActor.UpdateAnimSetList")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.SkeletalMeshActor.ReplicatedEvent")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.SkeletalMeshActor.OnToggle")()); }
			ScriptFunction OnSetMaterial() { mixin(MGF!("mOnSetMaterial", "Function Engine.SkeletalMeshActor.OnSetMaterial")()); }
			ScriptFunction BeginAnimControl() { mixin(MGF!("mBeginAnimControl", "Function Engine.SkeletalMeshActor.BeginAnimControl")()); }
			ScriptFunction MAT_BeginAnimControl() { mixin(MGF!("mMAT_BeginAnimControl", "Function Engine.SkeletalMeshActor.MAT_BeginAnimControl")()); }
			ScriptFunction SetAnimPosition() { mixin(MGF!("mSetAnimPosition", "Function Engine.SkeletalMeshActor.SetAnimPosition")()); }
			ScriptFunction FinishAnimControl() { mixin(MGF!("mFinishAnimControl", "Function Engine.SkeletalMeshActor.FinishAnimControl")()); }
			ScriptFunction MAT_FinishAnimControl() { mixin(MGF!("mMAT_FinishAnimControl", "Function Engine.SkeletalMeshActor.MAT_FinishAnimControl")()); }
			ScriptFunction PlayActorFaceFXAnim() { mixin(MGF!("mPlayActorFaceFXAnim", "Function Engine.SkeletalMeshActor.PlayActorFaceFXAnim")()); }
			ScriptFunction StopActorFaceFXAnim() { mixin(MGF!("mStopActorFaceFXAnim", "Function Engine.SkeletalMeshActor.StopActorFaceFXAnim")()); }
			ScriptFunction GetFaceFXAudioComponent() { mixin(MGF!("mGetFaceFXAudioComponent", "Function Engine.SkeletalMeshActor.GetFaceFXAudioComponent")()); }
			ScriptFunction OnPlayFaceFXAnim() { mixin(MGF!("mOnPlayFaceFXAnim", "Function Engine.SkeletalMeshActor.OnPlayFaceFXAnim")()); }
			ScriptFunction GetActorFaceFXAsset() { mixin(MGF!("mGetActorFaceFXAsset", "Function Engine.SkeletalMeshActor.GetActorFaceFXAsset")()); }
			ScriptFunction IsActorPlayingFaceFXAnim() { mixin(MGF!("mIsActorPlayingFaceFXAnim", "Function Engine.SkeletalMeshActor.IsActorPlayingFaceFXAnim")()); }
			ScriptFunction OnSetMesh() { mixin(MGF!("mOnSetMesh", "Function Engine.SkeletalMeshActor.OnSetMesh")()); }
			ScriptFunction OnUpdatePhysBonesFromAnim() { mixin(MGF!("mOnUpdatePhysBonesFromAnim", "Function Engine.SkeletalMeshActor.OnUpdatePhysBonesFromAnim")()); }
			ScriptFunction OnSetSkelControlTarget() { mixin(MGF!("mOnSetSkelControlTarget", "Function Engine.SkeletalMeshActor.OnSetSkelControlTarget")()); }
			ScriptFunction DoKismetAttachment() { mixin(MGF!("mDoKismetAttachment", "Function Engine.SkeletalMeshActor.DoKismetAttachment")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function Engine.SkeletalMeshActor.TakeDamage")()); }
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF!("mShouldSaveForCheckpoint", "Function Engine.SkeletalMeshActor.ShouldSaveForCheckpoint")()); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF!("mCreateCheckpointRecord", "Function Engine.SkeletalMeshActor.CreateCheckpointRecord")()); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF!("mApplyCheckpointRecord", "Function Engine.SkeletalMeshActor.ApplyCheckpointRecord")()); }
			ScriptFunction PlayParticleEffect() { mixin(MGF!("mPlayParticleEffect", "Function Engine.SkeletalMeshActor.PlayParticleEffect")()); }
			ScriptFunction SkelMeshActorOnParticleSystemFinished() { mixin(MGF!("mSkelMeshActorOnParticleSystemFinished", "Function Engine.SkeletalMeshActor.SkelMeshActorOnParticleSystemFinished")()); }
			ScriptFunction CreateForceField() { mixin(MGF!("mCreateForceField", "Function Engine.SkeletalMeshActor.CreateForceField")()); }
		}
	}
	struct SkelMeshActorControlTarget
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMeshActor.SkelMeshActorControlTarget")()); }
		@property final auto ref
		{
			Actor TargetActor() { mixin(MGPS!("Actor", 8)()); }
			ScriptName ControlName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMeshActor.CheckpointRecord")()); }
		@property final
		{
			auto ref
			{
				Rotator Rotation() { mixin(MGPS!("Rotator", 16)()); }
				Vector Location() { mixin(MGPS!("Vector", 4)()); }
			}
			bool bSavedPosition() { mixin(MGBPS!(0, 0x4)()); }
			bool bSavedPosition(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool bHidden() { mixin(MGBPS!(0, 0x2)()); }
			bool bHidden(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bReplicated() { mixin(MGBPS!(0, 0x1)()); }
			bool bReplicated(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SkeletalMeshActor.SkelMeshActorControlTarget) ControlTargets() { mixin(MGPC!("ScriptArray!(SkeletalMeshActor.SkelMeshActorControlTarget)", 500)()); }
			ScriptArray!(InterpGroup) InterpGroupList() { mixin(MGPC!("ScriptArray!(InterpGroup)", 512)()); }
			float SavedCurrentTime() { mixin(MGPC!("float", 532)()); }
			ScriptName SavedAnimSeqName() { mixin(MGPC!("ScriptName", 524)()); }
			MaterialInterface ReplicatedMaterial() { mixin(MGPC!("MaterialInterface", 496)()); }
			SkeletalMesh ReplicatedMesh() { mixin(MGPC!("SkeletalMesh", 492)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FacialAudioComp'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			// WARNING: Property 'SkeletalMeshComponent' has the same name as a defined type!
		}
		bool bCollideActors_OldValue() { mixin(MGBPC!(476, 0x8)()); }
		bool bCollideActors_OldValue(bool val) { mixin(MSBPC!(476, 0x8)()); }
		bool bForceSaveInCheckpoint() { mixin(MGBPC!(476, 0x4)()); }
		bool bForceSaveInCheckpoint(bool val) { mixin(MSBPC!(476, 0x4)()); }
		bool bShouldDoAnimNotifies() { mixin(MGBPC!(476, 0x2)()); }
		bool bShouldDoAnimNotifies(bool val) { mixin(MSBPC!(476, 0x2)()); }
		bool bDamageAppliesImpulse() { mixin(MGBPC!(476, 0x1)()); }
		bool bDamageAppliesImpulse(bool val) { mixin(MSBPC!(476, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void UpdateAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateAnimSetList, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void OnSetMaterial(SeqAct_SetMaterial Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMaterial*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetMaterial, params.ptr, cast(void*)0);
	}
	void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginAnimControl, params.ptr, cast(void*)0);
	}
	void MAT_BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_BeginAnimControl, params.ptr, cast(void*)0);
	}
	void SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
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
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimPosition, params.ptr, cast(void*)0);
	}
	void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishAnimControl, params.ptr, cast(void*)0);
	}
	void MAT_FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_FinishAnimControl, params.ptr, cast(void*)0);
	}
	bool PlayActorFaceFXAnim(FaceFXAnimSet pAnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = pAnimSet;
		*cast(ScriptString*)&params[4] = GroupName;
		*cast(ScriptString*)&params[16] = SeqName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayActorFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopActorFaceFXAnim, cast(void*)0, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetFaceFXAudioComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFaceFXAudioComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
	}
	void OnPlayFaceFXAnim(SeqAct_PlayFaceFXAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayFaceFXAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayFaceFXAnim, params.ptr, cast(void*)0);
	}
	FaceFXAsset GetActorFaceFXAsset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorFaceFXAsset, params.ptr, cast(void*)0);
		return *cast(FaceFXAsset*)params.ptr;
	}
	bool IsActorPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsActorPlayingFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnSetMesh(SeqAct_SetMesh Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMesh*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetMesh, params.ptr, cast(void*)0);
	}
	void OnUpdatePhysBonesFromAnim(SeqAct_UpdatePhysBonesFromAnim Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_UpdatePhysBonesFromAnim*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePhysBonesFromAnim, params.ptr, cast(void*)0);
	}
	void OnSetSkelControlTarget(SeqAct_SetSkelControlTarget Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetSkelControlTarget*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetSkelControlTarget, params.ptr, cast(void*)0);
	}
	void DoKismetAttachment(Actor pAttachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = pAttachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoKismetAttachment, params.ptr, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(ref SkeletalMeshActor.CheckpointRecord Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SkeletalMeshActor.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(SkeletalMeshActor.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in SkeletalMeshActor.CheckpointRecord Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SkeletalMeshActor.CheckpointRecord*)params.ptr = cast(SkeletalMeshActor.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
	bool PlayParticleEffect(in AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = cast(AnimNotify_PlayParticleEffect)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayParticleEffect, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SkelMeshActorOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SkelMeshActorOnParticleSystemFinished, params.ptr, cast(void*)0);
	}
	bool CreateForceField(in AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = cast(AnimNotify_ForceField)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateForceField, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
