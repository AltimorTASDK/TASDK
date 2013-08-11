module UnrealScript.GameFramework.GameCrowdAgentSkeletal;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.GameFramework.SeqAct_PlayAgentAnimation;
import UnrealScript.Engine.AnimNodeBlend;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.Engine.AnimTree;
import UnrealScript.Engine.LightComponent;

extern(C++) interface GameCrowdAgentSkeletal : GameCrowdAgent
{
	struct GameCrowdAttachmentList
	{
		public @property final auto ref ScriptArray!(GameCrowdAgentSkeletal.GameCrowdAttachmentInfo) List() { return *cast(ScriptArray!(GameCrowdAgentSkeletal.GameCrowdAttachmentInfo)*)(cast(size_t)&this + 8); }
		private ubyte __List[12];
		public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SocketName[8];
	}
	struct GameCrowdAttachmentInfo
	{
		public @property final auto ref Vector Scale3D() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __Scale3D[12];
		public @property final auto ref float Chance() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Chance[4];
		// WARNING: Property 'StaticMesh' has the same name as a defined type!
	}
	public @property final auto ref ScriptArray!(ScriptName) WalkAnimNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 992); }
	public @property final auto ref ScriptArray!(ScriptName) RunAnimNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1004); }
	public @property final auto ref ScriptArray!(ScriptName) IdleAnimNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1016); }
	public @property final auto ref ScriptArray!(ScriptName) DeathAnimNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1028); }
	public @property final auto ref ScriptArray!(GameCrowdAgentSkeletal.GameCrowdAttachmentList) Attachments() { return *cast(ScriptArray!(GameCrowdAgentSkeletal.GameCrowdAttachmentList)*)(cast(size_t)cast(void*)this + 1064); }
	public @property final auto ref float MaxAnimationDistanceSq() { return *cast(float*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref float MaxAnimationDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1084); }
	public @property final bool bAnimateThisTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1080) & 0x8) != 0; }
	public @property final bool bAnimateThisTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1080) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1080) &= ~0x8; } return val; }
	public @property final bool bIsPlayingDeathAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1080) & 0x4) != 0; }
	public @property final bool bIsPlayingDeathAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1080) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1080) &= ~0x4; } return val; }
	public @property final bool bIsPlayingIdleAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1080) & 0x2) != 0; }
	public @property final bool bIsPlayingIdleAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1080) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1080) &= ~0x2; } return val; }
	public @property final bool bUseRootMotionVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1080) & 0x1) != 0; }
	public @property final bool bUseRootMotionVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1080) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1080) &= ~0x1; } return val; }
	public @property final auto ref float MaxTargetAcquireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref ScriptName MoveSyncGroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref float MaxSpeedBlendChangeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1052); }
	public @property final auto ref float AnimVelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
	public @property final auto ref float SpeedBlendEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
	public @property final auto ref float SpeedBlendStart() { return *cast(float*)(cast(size_t)cast(void*)this + 1040); }
	public @property final auto ref AnimTree AgentTree() { return *cast(AnimTree*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref AnimNodeSequence RunSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 984); }
	public @property final auto ref AnimNodeSequence WalkSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 980); }
	public @property final auto ref AnimNodeSequence ActionSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 976); }
	public @property final auto ref AnimNodeSlot FullBodySlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 972); }
	public @property final auto ref AnimNodeBlend SpeedBlendNode() { return *cast(AnimNodeBlend*)(cast(size_t)cast(void*)this + 968); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31167], cast(void*)0, cast(void*)0);
	}
	final void SetLighting(bool bEnableLightEnvironment, LightComponent.LightingChannelContainer AgentLightingChannel, bool bCastShadows)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableLightEnvironment;
		*cast(LightComponent.LightingChannelContainer*)&params[4] = AgentLightingChannel;
		*cast(bool*)&params[8] = bCastShadows;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31168], params.ptr, cast(void*)0);
	}
	final void PlayDeath(Vector KillMomentum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = KillMomentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31172], params.ptr, cast(void*)0);
	}
	final void SetRootMotion(bool bRootMotionEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRootMotionEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31174], params.ptr, cast(void*)0);
	}
	final void OnPlayAgentAnimation(SeqAct_PlayAgentAnimation Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayAgentAnimation*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31176], params.ptr, cast(void*)0);
	}
	final void ClearLatentAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31178], cast(void*)0, cast(void*)0);
	}
	final void PlayIdleAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31179], cast(void*)0, cast(void*)0);
	}
	final void StopIdleAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31180], cast(void*)0, cast(void*)0);
	}
	final void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31181], params.ptr, cast(void*)0);
	}
	final void CreateAttachments()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31185], cast(void*)0, cast(void*)0);
	}
}
