module UnrealScript.UTGame.UTCharInfo;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface UTCharInfo : UObject
{
public extern(D):
	struct CustomAIData
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final auto ref
		{
			ScriptString FavoriteWeapon() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
			float ReactionTime() { return *cast(float*)(cast(size_t)&this + 24); }
			float Jumpiness() { return *cast(float*)(cast(size_t)&this + 20); }
			float CombatStyle() { return *cast(float*)(cast(size_t)&this + 16); }
			float Aggressiveness() { return *cast(float*)(cast(size_t)&this + 12); }
			float Accuracy() { return *cast(float*)(cast(size_t)&this + 8); }
			float StrafingAbility() { return *cast(float*)(cast(size_t)&this + 4); }
			float Tactics() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct CharacterInfo
	{
		private ubyte __buffer__[112];
	public extern(D):
		@property final auto ref
		{
			UTCharInfo.CustomAIData AIData() { return *cast(UTCharInfo.CustomAIData*)(cast(size_t)&this + 72); }
			ScriptString Faction() { return *cast(ScriptString*)(cast(size_t)&this + 60); }
			ScriptString PreviewImageMarkup() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
			ScriptString CharName() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
			ScriptString FamilyID() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString CharID() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTCharInfo.CharacterInfo) Characters() { return *cast(ScriptArray!(UTCharInfo.CharacterInfo)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(ScriptClass) Families() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 72); }
		float LOD3DisplayFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
		float LOD2DisplayFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
		float LOD1DisplayFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	}
final:
	ScriptClass FindFamilyInfo(ScriptString InFamilyID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InFamilyID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42761], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[12];
	}
	ScriptString GetRandomCharClassName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43892], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
