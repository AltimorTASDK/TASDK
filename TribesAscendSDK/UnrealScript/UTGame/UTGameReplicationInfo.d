module UnrealScript.UTGame.UTGameReplicationInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface UTGameReplicationInfo : GameReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTGameReplicationInfo")()); }
	private static __gshared UTGameReplicationInfo mDefaultProperties;
	@property final static UTGameReplicationInfo DefaultProperties() { mixin(MGDPC!(UTGameReplicationInfo, "UTGameReplicationInfo UTGame.Default__UTGameReplicationInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInOrder;
			ScriptFunction mSortPRIArray;
			ScriptFunction mCharacterProcessingComplete;
			ScriptFunction mSetFlagHome;
			ScriptFunction mFlagIsHome;
			ScriptFunction mFlagsAreHome;
			ScriptFunction mSetFlagHeldFriendly;
			ScriptFunction mFlagIsHeldFriendly;
			ScriptFunction mSetFlagHeldEnemy;
			ScriptFunction mFlagIsHeldEnemy;
			ScriptFunction mSetFlagDown;
			ScriptFunction mFlagIsDown;
			ScriptFunction mTimer;
			ScriptFunction mShowMidGameMenu;
			ScriptFunction mSetHudShowScores;
			ScriptFunction mAddGameRule;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTGameReplicationInfo.PostBeginPlay")()); }
			ScriptFunction InOrder() { mixin(MGF!("mInOrder", "Function UTGame.UTGameReplicationInfo.InOrder")()); }
			ScriptFunction SortPRIArray() { mixin(MGF!("mSortPRIArray", "Function UTGame.UTGameReplicationInfo.SortPRIArray")()); }
			ScriptFunction CharacterProcessingComplete() { mixin(MGF!("mCharacterProcessingComplete", "Function UTGame.UTGameReplicationInfo.CharacterProcessingComplete")()); }
			ScriptFunction SetFlagHome() { mixin(MGF!("mSetFlagHome", "Function UTGame.UTGameReplicationInfo.SetFlagHome")()); }
			ScriptFunction FlagIsHome() { mixin(MGF!("mFlagIsHome", "Function UTGame.UTGameReplicationInfo.FlagIsHome")()); }
			ScriptFunction FlagsAreHome() { mixin(MGF!("mFlagsAreHome", "Function UTGame.UTGameReplicationInfo.FlagsAreHome")()); }
			ScriptFunction SetFlagHeldFriendly() { mixin(MGF!("mSetFlagHeldFriendly", "Function UTGame.UTGameReplicationInfo.SetFlagHeldFriendly")()); }
			ScriptFunction FlagIsHeldFriendly() { mixin(MGF!("mFlagIsHeldFriendly", "Function UTGame.UTGameReplicationInfo.FlagIsHeldFriendly")()); }
			ScriptFunction SetFlagHeldEnemy() { mixin(MGF!("mSetFlagHeldEnemy", "Function UTGame.UTGameReplicationInfo.SetFlagHeldEnemy")()); }
			ScriptFunction FlagIsHeldEnemy() { mixin(MGF!("mFlagIsHeldEnemy", "Function UTGame.UTGameReplicationInfo.FlagIsHeldEnemy")()); }
			ScriptFunction SetFlagDown() { mixin(MGF!("mSetFlagDown", "Function UTGame.UTGameReplicationInfo.SetFlagDown")()); }
			ScriptFunction FlagIsDown() { mixin(MGF!("mFlagIsDown", "Function UTGame.UTGameReplicationInfo.FlagIsDown")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function UTGame.UTGameReplicationInfo.Timer")()); }
			ScriptFunction ShowMidGameMenu() { mixin(MGF!("mShowMidGameMenu", "Function UTGame.UTGameReplicationInfo.ShowMidGameMenu")()); }
			ScriptFunction SetHudShowScores() { mixin(MGF!("mSetHudShowScores", "Function UTGame.UTGameReplicationInfo.SetHudShowScores")()); }
			ScriptFunction AddGameRule() { mixin(MGF!("mAddGameRule", "Function UTGame.UTGameReplicationInfo.AddGameRule")()); }
		}
	}
	enum EFlagState : ubyte
	{
		FLAG_Home = 0,
		FLAG_HeldFriendly = 1,
		FLAG_HeldEnemy = 2,
		FLAG_Down = 3,
		FLAG_MAX = 4,
	}
	struct MeshEffect
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTGameReplicationInfo.MeshEffect")()); }
		@property final auto ref
		{
			StaticMesh Mesh() { mixin(MGPS!(StaticMesh, 0)()); }
			// WARNING: Property 'Material' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString MessageOfTheDay() { mixin(MGPC!(ScriptString, 624)()); }
			ScriptArray!(UTGameReplicationInfo.MeshEffect) VehicleWeaponEffects() { mixin(MGPC!(ScriptArray!(UTGameReplicationInfo.MeshEffect), 612)()); }
			ScriptArray!(MaterialInterface) WeaponOverlays() { mixin(MGPC!(ScriptArray!(MaterialInterface), 600)()); }
			int BotDifficulty() { mixin(MGPC!(int, 564)()); }
			int MinNetPlayers() { mixin(MGPC!(int, 560)()); }
			ScriptString MutatorList() { mixin(MGPC!(ScriptString, 576)()); }
			ScriptString RulesString() { mixin(MGPC!(ScriptString, 588)()); }
			UTGameReplicationInfo.EFlagState FlagState() { mixin(MGPC!(UTGameReplicationInfo.EFlagState, 572)()); }
			float WeaponBerserk() { mixin(MGPC!(float, 556)()); }
		}
		bool bStoryMode() { mixin(MGBPC!(568, 0x4)()); }
		bool bStoryMode(bool val) { mixin(MSBPC!(568, 0x4)()); }
		bool bAnnouncementsDisabled() { mixin(MGBPC!(568, 0x20)()); }
		bool bAnnouncementsDisabled(bool val) { mixin(MSBPC!(568, 0x20)()); }
		bool bConsoleServer() { mixin(MGBPC!(568, 0x8)()); }
		bool bConsoleServer(bool val) { mixin(MSBPC!(568, 0x8)()); }
		bool bAllowKeyboardAndMouse() { mixin(MGBPC!(568, 0x10)()); }
		bool bAllowKeyboardAndMouse(bool val) { mixin(MSBPC!(568, 0x10)()); }
		bool bRequireReady() { mixin(MGBPC!(568, 0x40)()); }
		bool bRequireReady(bool val) { mixin(MSBPC!(568, 0x40)()); }
		bool bWarmupRound() { mixin(MGBPC!(568, 0x1)()); }
		bool bWarmupRound(bool val) { mixin(MSBPC!(568, 0x1)()); }
		bool bForceDefaultCharacter() { mixin(MGBPC!(568, 0x2)()); }
		bool bForceDefaultCharacter(bool val) { mixin(MSBPC!(568, 0x2)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool InOrder(PlayerReplicationInfo P1, PlayerReplicationInfo P2)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = P1;
		*cast(PlayerReplicationInfo*)&params[4] = P2;
		(cast(ScriptObject)this).ProcessEvent(Functions.InOrder, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SortPRIArray()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SortPRIArray, cast(void*)0, cast(void*)0);
	}
	void CharacterProcessingComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CharacterProcessingComplete, cast(void*)0, cast(void*)0);
	}
	void SetFlagHome(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlagHome, params.ptr, cast(void*)0);
	}
	bool FlagIsHome(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagIsHome, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FlagsAreHome()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagsAreHome, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetFlagHeldFriendly(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlagHeldFriendly, params.ptr, cast(void*)0);
	}
	bool FlagIsHeldFriendly(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagIsHeldFriendly, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetFlagHeldEnemy(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlagHeldEnemy, params.ptr, cast(void*)0);
	}
	bool FlagIsHeldEnemy(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagIsHeldEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetFlagDown(int TeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlagDown, params.ptr, cast(void*)0);
	}
	bool FlagIsDown(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagIsDown, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void ShowMidGameMenu(UTPlayerController InstigatorPC, ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = InstigatorPC;
		*cast(ScriptName*)&params[4] = TabTag;
		*cast(bool*)&params[12] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMidGameMenu, params.ptr, cast(void*)0);
	}
	void SetHudShowScores(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHudShowScores, params.ptr, cast(void*)0);
	}
	void AddGameRule(ScriptString Rule)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Rule;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddGameRule, params.ptr, cast(void*)0);
	}
}
