module UnrealScript.Engine.SpeechRecognition;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SpeechRecognition : UObject
{
	struct RecogVocabulary
	{
		public @property final auto ref ScriptArray!(SpeechRecognition.RecognisableWord) WhoDictionary() { return *cast(ScriptArray!(SpeechRecognition.RecognisableWord)*)(cast(size_t)&this + 0); }
		private ubyte __WhoDictionary[12];
		public @property final auto ref ScriptArray!(SpeechRecognition.RecognisableWord) WhatDictionary() { return *cast(ScriptArray!(SpeechRecognition.RecognisableWord)*)(cast(size_t)&this + 12); }
		private ubyte __WhatDictionary[12];
		public @property final auto ref ScriptArray!(SpeechRecognition.RecognisableWord) WhereDictionary() { return *cast(ScriptArray!(SpeechRecognition.RecognisableWord)*)(cast(size_t)&this + 24); }
		private ubyte __WhereDictionary[12];
		public @property final auto ref ScriptArray!(ubyte) VocabData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 48); }
		private ubyte __VocabData[12];
		public @property final auto ref ScriptArray!(ubyte) WorkingVocabData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 60); }
		private ubyte __WorkingVocabData[12];
		public @property final auto ref ScriptString VocabName() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
		private ubyte __VocabName[12];
	}
	struct RecognisableWord
	{
		public @property final auto ref ScriptString PhoneticWord() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __PhoneticWord[12];
		public @property final auto ref ScriptString ReferenceWord() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __ReferenceWord[12];
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
	}
	struct RecogUserData
	{
		public @property final auto ref ScriptArray!(ubyte) UserData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 4); }
		private ubyte __UserData[12];
		public @property final auto ref int ActiveVocabularies() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ActiveVocabularies[4];
	}
	public @property final auto ref ScriptArray!(SpeechRecognition.RecogVocabulary) Vocabularies() { return *cast(ScriptArray!(SpeechRecognition.RecogVocabulary)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptArray!(ubyte) VoiceData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptArray!(ubyte) WorkingVoiceData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref ScriptArray!(ubyte) UserData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref UObject.Pointer FnxVoiceData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bInitialised() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
	public @property final bool bInitialised(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
	public @property final bool bDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
	public @property final bool bDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
	public @property final auto ref SpeechRecognition.RecogUserData InstanceData() { return *cast(SpeechRecognition.RecogUserData*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float ConfidenceThreshhold() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptString Language() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
}
