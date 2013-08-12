module UnrealScript.Engine.SpeechRecognition;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SpeechRecognition : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpeechRecognition")); }
	struct RecogVocabulary
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SpeechRecognition.RecogVocabulary")); }
		@property final auto ref
		{
			ScriptArray!(SpeechRecognition.RecognisableWord) WhoDictionary() { return *cast(ScriptArray!(SpeechRecognition.RecognisableWord)*)(cast(size_t)&this + 0); }
			ScriptArray!(SpeechRecognition.RecognisableWord) WhatDictionary() { return *cast(ScriptArray!(SpeechRecognition.RecognisableWord)*)(cast(size_t)&this + 12); }
			ScriptArray!(SpeechRecognition.RecognisableWord) WhereDictionary() { return *cast(ScriptArray!(SpeechRecognition.RecognisableWord)*)(cast(size_t)&this + 24); }
			ScriptArray!(ubyte) VocabData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 48); }
			ScriptArray!(ubyte) WorkingVocabData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 60); }
			ScriptString VocabName() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
		}
	}
	struct RecognisableWord
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SpeechRecognition.RecognisableWord")); }
		@property final auto ref
		{
			ScriptString PhoneticWord() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
			ScriptString ReferenceWord() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct RecogUserData
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SpeechRecognition.RecogUserData")); }
		@property final auto ref
		{
			ScriptArray!(ubyte) UserData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 4); }
			int ActiveVocabularies() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SpeechRecognition.RecogVocabulary) Vocabularies() { return *cast(ScriptArray!(SpeechRecognition.RecogVocabulary)*)(cast(size_t)cast(void*)this + 76); }
			ScriptArray!(ubyte) VoiceData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 88); }
			ScriptArray!(ubyte) WorkingVoiceData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 100); }
			ScriptArray!(ubyte) UserData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 112); }
			UObject.Pointer FnxVoiceData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 192); }
			SpeechRecognition.RecogUserData InstanceData() { return *cast(SpeechRecognition.RecogUserData*)(cast(size_t)cast(void*)this + 124); }
			float ConfidenceThreshhold() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			ScriptString Language() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bInitialised() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
		bool bInitialised(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
		bool bDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
		bool bDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
	}
}
