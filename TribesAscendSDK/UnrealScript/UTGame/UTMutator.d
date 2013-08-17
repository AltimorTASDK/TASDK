module UnrealScript.UTGame.UTMutator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Mutator;

extern(C++) interface UTMutator : Mutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTMutator")()); }
	private static __gshared UTMutator mDefaultProperties;
	@property final static UTMutator DefaultProperties() { mixin(MGDPC!(UTMutator, "UTMutator UTGame.Default__UTMutator")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetNextUTMutator;
			ScriptFunction mMutatorIsAllowed;
			ScriptFunction mReplaceWith;
			ScriptFunction mProcessSpeechRecognition;
		}
		public @property static final
		{
			ScriptFunction GetNextUTMutator() { mixin(MGF!("mGetNextUTMutator", "Function UTGame.UTMutator.GetNextUTMutator")()); }
			ScriptFunction MutatorIsAllowed() { mixin(MGF!("mMutatorIsAllowed", "Function UTGame.UTMutator.MutatorIsAllowed")()); }
			ScriptFunction ReplaceWith() { mixin(MGF!("mReplaceWith", "Function UTGame.UTMutator.ReplaceWith")()); }
			ScriptFunction ProcessSpeechRecognition() { mixin(MGF!("mProcessSpeechRecognition", "Function UTGame.UTMutator.ProcessSpeechRecognition")()); }
		}
	}
final:
	UTMutator GetNextUTMutator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNextUTMutator, params.ptr, cast(void*)0);
		return *cast(UTMutator*)params.ptr;
	}
	bool MutatorIsAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MutatorIsAllowed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ReplaceWith(Actor Other, ScriptString aClassName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(ScriptString*)&params[4] = aClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplaceWith, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ProcessSpeechRecognition(UTPlayerController Speaker, ref in ScriptArray!(OnlineSubsystem.SpeechRecognizedWord) Words)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord))Words;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSpeechRecognition, params.ptr, cast(void*)0);
	}
}
