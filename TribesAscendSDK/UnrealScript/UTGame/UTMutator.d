module UnrealScript.UTGame.UTMutator;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Mutator;

extern(C++) interface UTMutator : Mutator
{
	final UTMutator GetNextUTMutator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44841], params.ptr, cast(void*)0);
		return *cast(UTMutator*)params.ptr;
	}
	final bool MutatorIsAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48551], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ReplaceWith(Actor Other, ScriptString aClassName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(ScriptString*)&params[4] = aClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48555], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void ProcessSpeechRecognition(UTPlayerController Speaker, ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)* Words)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Speaker;
		*cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4] = *Words;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48563], params.ptr, cast(void*)0);
		*Words = *cast(ScriptArray!(OnlineSubsystem.SpeechRecognizedWord)*)&params[4];
	}
}
