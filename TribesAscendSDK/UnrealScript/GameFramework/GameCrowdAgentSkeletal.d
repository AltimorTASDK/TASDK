module UnrealScript.GameFramework.GameCrowdAgentSkeletal;

import ScriptClasses;
import UnrealScript.Helpers;
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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCrowdAgentSkeletal")); }
	private static __gshared GameCrowdAgentSkeletal mDefaultProperties;
	@property final static GameCrowdAgentSkeletal DefaultProperties() { mixin(MGDPC("GameCrowdAgentSkeletal", "GameCrowdAgentSkeletal GameFramework.Default__GameCrowdAgentSkeletal")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetLighting;
			ScriptFunction mPlayDeath;
			ScriptFunction mSetRootMotion;
			ScriptFunction mOnPlayAgentAnimation;
			ScriptFunction mClearLatentAnimation;
			ScriptFunction mPlayIdleAnimation;
			ScriptFunction mStopIdleAnimation;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mCreateAttachments;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function GameFramework.GameCrowdAgentSkeletal.PostBeginPlay")); }
			ScriptFunction SetLighting() { mixin(MGF("mSetLighting", "Function GameFramework.GameCrowdAgentSkeletal.SetLighting")); }
			ScriptFunction PlayDeath() { mixin(MGF("mPlayDeath", "Function GameFramework.GameCrowdAgentSkeletal.PlayDeath")); }
			ScriptFunction SetRootMotion() { mixin(MGF("mSetRootMotion", "Function GameFramework.GameCrowdAgentSkeletal.SetRootMotion")); }
			ScriptFunction OnPlayAgentAnimation() { mixin(MGF("mOnPlayAgentAnimation", "Function GameFramework.GameCrowdAgentSkeletal.OnPlayAgentAnimation")); }
			ScriptFunction ClearLatentAnimation() { mixin(MGF("mClearLatentAnimation", "Function GameFramework.GameCrowdAgentSkeletal.ClearLatentAnimation")); }
			ScriptFunction PlayIdleAnimation() { mixin(MGF("mPlayIdleAnimation", "Function GameFramework.GameCrowdAgentSkeletal.PlayIdleAnimation")); }
			ScriptFunction StopIdleAnimation() { mixin(MGF("mStopIdleAnimation", "Function GameFramework.GameCrowdAgentSkeletal.StopIdleAnimation")); }
			ScriptFunction OnAnimEnd() { mixin(MGF("mOnAnimEnd", "Function GameFramework.GameCrowdAgentSkeletal.OnAnimEnd")); }
			ScriptFunction CreateAttachments() { mixin(MGF("mCreateAttachments", "Function GameFramework.GameCrowdAgentSkeletal.CreateAttachments")); }
		}
	}
	struct GameCrowdAttachmentList
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameCrowdAgentSkeletal.GameCrowdAttachmentList")); }
		@property final auto ref
		{
			ScriptArray!(GameCrowdAgentSkeletal.GameCrowdAttachmentInfo) List() { mixin(MGPS("ScriptArray!(GameCrowdAgentSkeletal.GameCrowdAttachmentInfo)", 8)); }
			ScriptName SocketName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct GameCrowdAttachmentInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameCrowdAgentSkeletal.GameCrowdAttachmentInfo")); }
		@property final auto ref
		{
			Vector Scale3D() { mixin(MGPS("Vector", 8)); }
			float Chance() { mixin(MGPS("float", 4)); }
			StaticMesh StaticMeshVar() { mixin(MGPS("StaticMesh", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) WalkAnimNames() { mixin(MGPC("ScriptArray!(ScriptName)", 992)); }
			ScriptArray!(ScriptName) RunAnimNames() { mixin(MGPC("ScriptArray!(ScriptName)", 1004)); }
			ScriptArray!(ScriptName) IdleAnimNames() { mixin(MGPC("ScriptArray!(ScriptName)", 1016)); }
			ScriptArray!(ScriptName) DeathAnimNames() { mixin(MGPC("ScriptArray!(ScriptName)", 1028)); }
			ScriptArray!(GameCrowdAgentSkeletal.GameCrowdAttachmentList) Attachments() { mixin(MGPC("ScriptArray!(GameCrowdAgentSkeletal.GameCrowdAttachmentList)", 1064)); }
			float MaxAnimationDistanceSq() { mixin(MGPC("float", 1088)); }
			float MaxAnimationDistance() { mixin(MGPC("float", 1084)); }
			float MaxTargetAcquireTime() { mixin(MGPC("float", 1076)); }
			ScriptName MoveSyncGroupName() { mixin(MGPC("ScriptName", 1056)); }
			float MaxSpeedBlendChangeSpeed() { mixin(MGPC("float", 1052)); }
			float AnimVelRate() { mixin(MGPC("float", 1048)); }
			float SpeedBlendEnd() { mixin(MGPC("float", 1044)); }
			float SpeedBlendStart() { mixin(MGPC("float", 1040)); }
			AnimTree AgentTree() { mixin(MGPC("AnimTree", 988)); }
			AnimNodeSequence RunSeqNode() { mixin(MGPC("AnimNodeSequence", 984)); }
			AnimNodeSequence WalkSeqNode() { mixin(MGPC("AnimNodeSequence", 980)); }
			AnimNodeSequence ActionSeqNode() { mixin(MGPC("AnimNodeSequence", 976)); }
			AnimNodeSlot FullBodySlot() { mixin(MGPC("AnimNodeSlot", 972)); }
			AnimNodeBlend SpeedBlendNode() { mixin(MGPC("AnimNodeBlend", 968)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SkeletalMeshComponent'!
		}
		bool bAnimateThisTick() { mixin(MGBPC(1080, 0x8)); }
		bool bAnimateThisTick(bool val) { mixin(MSBPC(1080, 0x8)); }
		bool bIsPlayingDeathAnimation() { mixin(MGBPC(1080, 0x4)); }
		bool bIsPlayingDeathAnimation(bool val) { mixin(MSBPC(1080, 0x4)); }
		bool bIsPlayingIdleAnimation() { mixin(MGBPC(1080, 0x2)); }
		bool bIsPlayingIdleAnimation(bool val) { mixin(MSBPC(1080, 0x2)); }
		bool bUseRootMotionVelocity() { mixin(MGBPC(1080, 0x1)); }
		bool bUseRootMotionVelocity(bool val) { mixin(MSBPC(1080, 0x1)); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetLighting(bool bEnableLightEnvironment, LightComponent.LightingChannelContainer AgentLightingChannel, bool bCastShadows)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableLightEnvironment;
		*cast(LightComponent.LightingChannelContainer*)&params[4] = AgentLightingChannel;
		*cast(bool*)&params[8] = bCastShadows;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLighting, params.ptr, cast(void*)0);
	}
	void PlayDeath(Vector KillMomentum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = KillMomentum;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDeath, params.ptr, cast(void*)0);
	}
	void SetRootMotion(bool bRootMotionEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRootMotionEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRootMotion, params.ptr, cast(void*)0);
	}
	void OnPlayAgentAnimation(SeqAct_PlayAgentAnimation Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayAgentAnimation*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayAgentAnimation, params.ptr, cast(void*)0);
	}
	void ClearLatentAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLatentAnimation, cast(void*)0, cast(void*)0);
	}
	void PlayIdleAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayIdleAnimation, cast(void*)0, cast(void*)0);
	}
	void StopIdleAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopIdleAnimation, cast(void*)0, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	void CreateAttachments()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateAttachments, cast(void*)0, cast(void*)0);
	}
}
