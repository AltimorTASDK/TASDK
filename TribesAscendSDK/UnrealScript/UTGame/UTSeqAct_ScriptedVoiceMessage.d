module UnrealScript.UTGame.UTSeqAct_ScriptedVoiceMessage;

import ScriptClasses;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ScriptedVoiceMessage : SequenceAction
{
	public @property final auto ref ScriptString SpeakingCharacterName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref SoundNodeWave VoiceToPlay() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49127], cast(void*)0, cast(void*)0);
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49132], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
