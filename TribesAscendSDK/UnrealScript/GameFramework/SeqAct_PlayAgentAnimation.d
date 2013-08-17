module UnrealScript.GameFramework.SeqAct_PlayAgentAnimation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdAgentSkeletal;

extern(C++) interface SeqAct_PlayAgentAnimation : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqAct_PlayAgentAnimation")()); }
	private static __gshared SeqAct_PlayAgentAnimation mDefaultProperties;
	@property final static SeqAct_PlayAgentAnimation DefaultProperties() { mixin(MGDPC!(SeqAct_PlayAgentAnimation, "SeqAct_PlayAgentAnimation GameFramework.Default__SeqAct_PlayAgentAnimation")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjClassVersion;
			ScriptFunction mSetCurrentAnimationActionFor;
		}
		public @property static final
		{
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function GameFramework.SeqAct_PlayAgentAnimation.GetObjClassVersion")()); }
			ScriptFunction SetCurrentAnimationActionFor() { mixin(MGF!("mSetCurrentAnimationActionFor", "Function GameFramework.SeqAct_PlayAgentAnimation.SetCurrentAnimationActionFor")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) AnimationList() { mixin(MGPC!("ScriptArray!(ScriptName)", 248)()); }
			Actor ActionTarget() { mixin(MGPC!("Actor", 280)()); }
			float LoopTime() { mixin(MGPC!("float", 276)()); }
			int LoopIndex() { mixin(MGPC!("int", 272)()); }
			float BlendOutTime() { mixin(MGPC!("float", 264)()); }
			float BlendInTime() { mixin(MGPC!("float", 260)()); }
		}
		bool bBlendBetweenAnims() { mixin(MGBPC!(268, 0x8)()); }
		bool bBlendBetweenAnims(bool val) { mixin(MSBPC!(268, 0x8)()); }
		bool bLooping() { mixin(MGBPC!(268, 0x4)()); }
		bool bLooping(bool val) { mixin(MSBPC!(268, 0x4)()); }
		bool bFaceActionTargetFirst() { mixin(MGBPC!(268, 0x2)()); }
		bool bFaceActionTargetFirst(bool val) { mixin(MSBPC!(268, 0x2)()); }
		bool bUseRootMotion() { mixin(MGBPC!(268, 0x1)()); }
		bool bUseRootMotion(bool val) { mixin(MSBPC!(268, 0x1)()); }
	}
final:
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SetCurrentAnimationActionFor(GameCrowdAgentSkeletal Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgentSkeletal*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentAnimationActionFor, params.ptr, cast(void*)0);
	}
}
