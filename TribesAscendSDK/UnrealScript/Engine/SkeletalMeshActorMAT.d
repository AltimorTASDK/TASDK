module UnrealScript.Engine.SkeletalMeshActorMAT;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SkeletalMeshCinematicActor;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface SkeletalMeshActorMAT : SkeletalMeshCinematicActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkeletalMeshActorMAT")()); }
	private static __gshared SkeletalMeshActorMAT mDefaultProperties;
	@property final static SkeletalMeshActorMAT DefaultProperties() { mixin(MGDPC!(SkeletalMeshActorMAT, "SkeletalMeshActorMAT Engine.Default__SkeletalMeshActorMAT")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMAT_SetAnimWeights;
			ScriptFunction mMAT_SetMorphWeight;
			ScriptFunction mMAT_SetSkelControlScale;
			ScriptFunction mDestroyed;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mCacheAnimNodes;
			ScriptFunction mClearAnimNodes;
			ScriptFunction mSetAnimPosition;
			ScriptFunction mMAT_SetAnimPosition;
			ScriptFunction mFinishAnimControl;
			ScriptFunction mSetMorphWeight;
			ScriptFunction mSetSkelControlScale;
		}
		public @property static final
		{
			ScriptFunction MAT_SetAnimWeights() { mixin(MGF!("mMAT_SetAnimWeights", "Function Engine.SkeletalMeshActorMAT.MAT_SetAnimWeights")()); }
			ScriptFunction MAT_SetMorphWeight() { mixin(MGF!("mMAT_SetMorphWeight", "Function Engine.SkeletalMeshActorMAT.MAT_SetMorphWeight")()); }
			ScriptFunction MAT_SetSkelControlScale() { mixin(MGF!("mMAT_SetSkelControlScale", "Function Engine.SkeletalMeshActorMAT.MAT_SetSkelControlScale")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.SkeletalMeshActorMAT.Destroyed")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function Engine.SkeletalMeshActorMAT.PostInitAnimTree")()); }
			ScriptFunction CacheAnimNodes() { mixin(MGF!("mCacheAnimNodes", "Function Engine.SkeletalMeshActorMAT.CacheAnimNodes")()); }
			ScriptFunction ClearAnimNodes() { mixin(MGF!("mClearAnimNodes", "Function Engine.SkeletalMeshActorMAT.ClearAnimNodes")()); }
			ScriptFunction SetAnimPosition() { mixin(MGF!("mSetAnimPosition", "Function Engine.SkeletalMeshActorMAT.SetAnimPosition")()); }
			ScriptFunction MAT_SetAnimPosition() { mixin(MGF!("mMAT_SetAnimPosition", "Function Engine.SkeletalMeshActorMAT.MAT_SetAnimPosition")()); }
			ScriptFunction FinishAnimControl() { mixin(MGF!("mFinishAnimControl", "Function Engine.SkeletalMeshActorMAT.FinishAnimControl")()); }
			ScriptFunction SetMorphWeight() { mixin(MGF!("mSetMorphWeight", "Function Engine.SkeletalMeshActorMAT.SetMorphWeight")()); }
			ScriptFunction SetSkelControlScale() { mixin(MGF!("mSetSkelControlScale", "Function Engine.SkeletalMeshActorMAT.SetSkelControlScale")()); }
		}
	}
	@property final auto ref ScriptArray!(AnimNodeSlot) SlotNodes() { mixin(MGPC!(ScriptArray!(AnimNodeSlot), 536)()); }
final:
	void MAT_SetAnimWeights(ScriptArray!(Actor.AnimSlotInfo) SlotInfos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Actor.AnimSlotInfo)*)params.ptr = SlotInfos;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_SetAnimWeights, params.ptr, cast(void*)0);
	}
	void MAT_SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_SetMorphWeight, params.ptr, cast(void*)0);
	}
	void MAT_SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_SetSkelControlScale, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void CacheAnimNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CacheAnimNodes, cast(void*)0, cast(void*)0);
	}
	void ClearAnimNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAnimNodes, cast(void*)0, cast(void*)0);
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
	void MAT_SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
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
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_SetAnimPosition, params.ptr, cast(void*)0);
	}
	void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishAnimControl, params.ptr, cast(void*)0);
	}
	void SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMorphWeight, params.ptr, cast(void*)0);
	}
	void SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkelControlScale, params.ptr, cast(void*)0);
	}
}
