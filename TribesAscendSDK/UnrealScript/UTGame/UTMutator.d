module UnrealScript.UTGame.UTMutator;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Mutator;

extern(C++) interface UTMutator : Mutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMutator")); }
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
			ScriptFunction GetNextUTMutator() { return mGetNextUTMutator ? mGetNextUTMutator : (mGetNextUTMutator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator.GetNextUTMutator")); }
			ScriptFunction MutatorIsAllowed() { return mMutatorIsAllowed ? mMutatorIsAllowed : (mMutatorIsAllowed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator.MutatorIsAllowed")); }
			ScriptFunction ReplaceWith() { return mReplaceWith ? mReplaceWith : (mReplaceWith = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator.ReplaceWith")); }
			ScriptFunction ProcessSpeechRecognition() { return mProcessSpeechRecognition ? mProcessSpeechRecognition : (mProcessSpeechRecognition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator.ProcessSpeechRecognition")); }
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
	void ProcessSpeechRecognition(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSpeechRecognition, params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
	}
}
