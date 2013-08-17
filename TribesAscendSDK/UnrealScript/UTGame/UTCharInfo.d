module UnrealScript.UTGame.UTCharInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface UTCharInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTCharInfo")()); }
	private static __gshared UTCharInfo mDefaultProperties;
	@property final static UTCharInfo DefaultProperties() { mixin(MGDPC!(UTCharInfo, "UTCharInfo UTGame.Default__UTCharInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindFamilyInfo;
			ScriptFunction mGetRandomCharClassName;
		}
		public @property static final
		{
			ScriptFunction FindFamilyInfo() { mixin(MGF!("mFindFamilyInfo", "Function UTGame.UTCharInfo.FindFamilyInfo")()); }
			ScriptFunction GetRandomCharClassName() { mixin(MGF!("mGetRandomCharClassName", "Function UTGame.UTCharInfo.GetRandomCharClassName")()); }
		}
	}
	struct CustomAIData
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTCharInfo.CustomAIData")()); }
		@property final auto ref
		{
			ScriptString FavoriteWeapon() { mixin(MGPS!(ScriptString, 28)()); }
			float ReactionTime() { mixin(MGPS!(float, 24)()); }
			float Jumpiness() { mixin(MGPS!(float, 20)()); }
			float CombatStyle() { mixin(MGPS!(float, 16)()); }
			float Aggressiveness() { mixin(MGPS!(float, 12)()); }
			float Accuracy() { mixin(MGPS!(float, 8)()); }
			float StrafingAbility() { mixin(MGPS!(float, 4)()); }
			float Tactics() { mixin(MGPS!(float, 0)()); }
		}
	}
	struct CharacterInfo
	{
		private ubyte __buffer__[112];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTCharInfo.CharacterInfo")()); }
		@property final auto ref
		{
			UTCharInfo.CustomAIData AIData() { mixin(MGPS!(UTCharInfo.CustomAIData, 72)()); }
			ScriptString Faction() { mixin(MGPS!(ScriptString, 60)()); }
			ScriptString PreviewImageMarkup() { mixin(MGPS!(ScriptString, 48)()); }
			ScriptString Description() { mixin(MGPS!(ScriptString, 36)()); }
			ScriptString CharName() { mixin(MGPS!(ScriptString, 24)()); }
			ScriptString FamilyID() { mixin(MGPS!(ScriptString, 12)()); }
			ScriptString CharID() { mixin(MGPS!(ScriptString, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTCharInfo.CharacterInfo) Characters() { mixin(MGPC!(ScriptArray!(UTCharInfo.CharacterInfo), 60)()); }
		ScriptArray!(ScriptClass) Families() { mixin(MGPC!(ScriptArray!(ScriptClass), 72)()); }
		float LOD3DisplayFactor() { mixin(MGPC!(float, 92)()); }
		float LOD2DisplayFactor() { mixin(MGPC!(float, 88)()); }
		float LOD1DisplayFactor() { mixin(MGPC!(float, 84)()); }
	}
final:
	static ScriptClass FindFamilyInfo(ScriptString InFamilyID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InFamilyID;
		StaticClass.ProcessEvent(Functions.FindFamilyInfo, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[12];
	}
	static ScriptString GetRandomCharClassName()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetRandomCharClassName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
