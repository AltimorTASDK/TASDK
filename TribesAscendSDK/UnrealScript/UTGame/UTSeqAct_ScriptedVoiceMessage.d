module UnrealScript.UTGame.UTSeqAct_ScriptedVoiceMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ScriptedVoiceMessage : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_ScriptedVoiceMessage")()); }
	private static __gshared UTSeqAct_ScriptedVoiceMessage mDefaultProperties;
	@property final static UTSeqAct_ScriptedVoiceMessage DefaultProperties() { mixin(MGDPC!(UTSeqAct_ScriptedVoiceMessage, "UTSeqAct_ScriptedVoiceMessage UTGame.Default__UTSeqAct_ScriptedVoiceMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActivated;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqAct_ScriptedVoiceMessage.Activated")()); }
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function UTGame.UTSeqAct_ScriptedVoiceMessage.GetObjClassVersion")()); }
		}
	}
	@property final auto ref
	{
		ScriptString SpeakingCharacterName() { mixin(MGPC!("ScriptString", 236)()); }
		SoundNodeWave VoiceToPlay() { mixin(MGPC!("SoundNodeWave", 232)()); }
	}
final:
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
