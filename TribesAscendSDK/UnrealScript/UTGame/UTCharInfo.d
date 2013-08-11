module UnrealScript.UTGame.UTCharInfo;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface UTCharInfo : UObject
{
	struct CustomAIData
	{
		public @property final auto ref ScriptString FavoriteWeapon() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
		private ubyte __FavoriteWeapon[12];
		public @property final auto ref float ReactionTime() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __ReactionTime[4];
		public @property final auto ref float Jumpiness() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __Jumpiness[4];
		public @property final auto ref float CombatStyle() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __CombatStyle[4];
		public @property final auto ref float Aggressiveness() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Aggressiveness[4];
		public @property final auto ref float Accuracy() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Accuracy[4];
		public @property final auto ref float StrafingAbility() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __StrafingAbility[4];
		public @property final auto ref float Tactics() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Tactics[4];
	}
	struct CharacterInfo
	{
		public @property final auto ref UTCharInfo.CustomAIData AIData() { return *cast(UTCharInfo.CustomAIData*)(cast(size_t)&this + 72); }
		private ubyte __AIData[40];
		public @property final auto ref ScriptString Faction() { return *cast(ScriptString*)(cast(size_t)&this + 60); }
		private ubyte __Faction[12];
		public @property final auto ref ScriptString PreviewImageMarkup() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
		private ubyte __PreviewImageMarkup[12];
		public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
		private ubyte __Description[12];
		public @property final auto ref ScriptString CharName() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __CharName[12];
		public @property final auto ref ScriptString FamilyID() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __FamilyID[12];
		public @property final auto ref ScriptString CharID() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __CharID[12];
	}
	public @property final auto ref ScriptArray!(UTCharInfo.CharacterInfo) Characters() { return *cast(ScriptArray!(UTCharInfo.CharacterInfo)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(ScriptClass) Families() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float LOD3DisplayFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float LOD2DisplayFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float LOD1DisplayFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	final ScriptClass FindFamilyInfo(ScriptString InFamilyID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InFamilyID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42761], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[12];
	}
	final ScriptString GetRandomCharClassName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43892], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
