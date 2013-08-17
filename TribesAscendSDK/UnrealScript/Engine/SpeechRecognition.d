module UnrealScript.Engine.SpeechRecognition;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface SpeechRecognition : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SpeechRecognition")()); }
	private static __gshared SpeechRecognition mDefaultProperties;
	@property final static SpeechRecognition DefaultProperties() { mixin(MGDPC!(SpeechRecognition, "SpeechRecognition Engine.Default__SpeechRecognition")()); }
	struct RecogVocabulary
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SpeechRecognition.RecogVocabulary")()); }
		@property final auto ref
		{
			ScriptArray!(SpeechRecognition.RecognisableWord) WhoDictionary() { mixin(MGPS!("ScriptArray!(SpeechRecognition.RecognisableWord)", 0)()); }
			ScriptArray!(SpeechRecognition.RecognisableWord) WhatDictionary() { mixin(MGPS!("ScriptArray!(SpeechRecognition.RecognisableWord)", 12)()); }
			ScriptArray!(SpeechRecognition.RecognisableWord) WhereDictionary() { mixin(MGPS!("ScriptArray!(SpeechRecognition.RecognisableWord)", 24)()); }
			ScriptArray!(ubyte) VocabData() { mixin(MGPS!("ScriptArray!(ubyte)", 48)()); }
			ScriptArray!(ubyte) WorkingVocabData() { mixin(MGPS!("ScriptArray!(ubyte)", 60)()); }
			ScriptString VocabName() { mixin(MGPS!("ScriptString", 36)()); }
		}
	}
	struct RecognisableWord
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SpeechRecognition.RecognisableWord")()); }
		@property final auto ref
		{
			ScriptString PhoneticWord() { mixin(MGPS!("ScriptString", 16)()); }
			ScriptString ReferenceWord() { mixin(MGPS!("ScriptString", 4)()); }
			int Id() { mixin(MGPS!("int", 0)()); }
		}
	}
	struct RecogUserData
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SpeechRecognition.RecogUserData")()); }
		@property final auto ref
		{
			ScriptArray!(ubyte) UserData() { mixin(MGPS!("ScriptArray!(ubyte)", 4)()); }
			int ActiveVocabularies() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SpeechRecognition.RecogVocabulary) Vocabularies() { mixin(MGPC!("ScriptArray!(SpeechRecognition.RecogVocabulary)", 76)()); }
			ScriptArray!(ubyte) VoiceData() { mixin(MGPC!("ScriptArray!(ubyte)", 88)()); }
			ScriptArray!(ubyte) WorkingVoiceData() { mixin(MGPC!("ScriptArray!(ubyte)", 100)()); }
			ScriptArray!(ubyte) UserData() { mixin(MGPC!("ScriptArray!(ubyte)", 112)()); }
			UObject.Pointer FnxVoiceData() { mixin(MGPC!("UObject.Pointer", 192)()); }
			SpeechRecognition.RecogUserData InstanceData() { mixin(MGPC!("SpeechRecognition.RecogUserData", 124)()); }
			float ConfidenceThreshhold() { mixin(MGPC!("float", 72)()); }
			ScriptString Language() { mixin(MGPC!("ScriptString", 60)()); }
		}
		bool bInitialised() { mixin(MGBPC!(188, 0x2)()); }
		bool bInitialised(bool val) { mixin(MSBPC!(188, 0x2)()); }
		bool bDirty() { mixin(MGBPC!(188, 0x1)()); }
		bool bDirty(bool val) { mixin(MSBPC!(188, 0x1)()); }
	}
}
