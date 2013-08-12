module UnrealScript.UTGame.UTGameReplicationInfo;

import ScriptClasses;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface UTGameReplicationInfo : GameReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameReplicationInfo")); }
	private static __gshared UTGameReplicationInfo mDefaultProperties;
	@property final static UTGameReplicationInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGameReplicationInfo)("UTGameReplicationInfo UTGame.Default__UTGameReplicationInfo")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.PostBeginPlay")); }
			ScriptFunction InOrder() { return mInOrder ? mInOrder : (mInOrder = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.InOrder")); }
			ScriptFunction SortPRIArray() { return mSortPRIArray ? mSortPRIArray : (mSortPRIArray = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.SortPRIArray")); }
			ScriptFunction CharacterProcessingComplete() { return mCharacterProcessingComplete ? mCharacterProcessingComplete : (mCharacterProcessingComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.CharacterProcessingComplete")); }
			ScriptFunction SetFlagHome() { return mSetFlagHome ? mSetFlagHome : (mSetFlagHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.SetFlagHome")); }
			ScriptFunction FlagIsHome() { return mFlagIsHome ? mFlagIsHome : (mFlagIsHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.FlagIsHome")); }
			ScriptFunction FlagsAreHome() { return mFlagsAreHome ? mFlagsAreHome : (mFlagsAreHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.FlagsAreHome")); }
			ScriptFunction SetFlagHeldFriendly() { return mSetFlagHeldFriendly ? mSetFlagHeldFriendly : (mSetFlagHeldFriendly = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.SetFlagHeldFriendly")); }
			ScriptFunction FlagIsHeldFriendly() { return mFlagIsHeldFriendly ? mFlagIsHeldFriendly : (mFlagIsHeldFriendly = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.FlagIsHeldFriendly")); }
			ScriptFunction SetFlagHeldEnemy() { return mSetFlagHeldEnemy ? mSetFlagHeldEnemy : (mSetFlagHeldEnemy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.SetFlagHeldEnemy")); }
			ScriptFunction FlagIsHeldEnemy() { return mFlagIsHeldEnemy ? mFlagIsHeldEnemy : (mFlagIsHeldEnemy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.FlagIsHeldEnemy")); }
			ScriptFunction SetFlagDown() { return mSetFlagDown ? mSetFlagDown : (mSetFlagDown = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.SetFlagDown")); }
			ScriptFunction FlagIsDown() { return mFlagIsDown ? mFlagIsDown : (mFlagIsDown = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.FlagIsDown")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.Timer")); }
			ScriptFunction ShowMidGameMenu() { return mShowMidGameMenu ? mShowMidGameMenu : (mShowMidGameMenu = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.ShowMidGameMenu")); }
			ScriptFunction SetHudShowScores() { return mSetHudShowScores ? mSetHudShowScores : (mSetHudShowScores = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.SetHudShowScores")); }
			ScriptFunction AddGameRule() { return mAddGameRule ? mAddGameRule : (mAddGameRule = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameReplicationInfo.AddGameRule")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTGameReplicationInfo.MeshEffect")); }
		@property final auto ref
		{
			StaticMesh Mesh() { return *cast(StaticMesh*)(cast(size_t)&this + 0); }
			// WARNING: Property 'Material' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString MessageOfTheDay() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 624); }
			ScriptArray!(UTGameReplicationInfo.MeshEffect) VehicleWeaponEffects() { return *cast(ScriptArray!(UTGameReplicationInfo.MeshEffect)*)(cast(size_t)cast(void*)this + 612); }
			ScriptArray!(MaterialInterface) WeaponOverlays() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 600); }
			int BotDifficulty() { return *cast(int*)(cast(size_t)cast(void*)this + 564); }
			int MinNetPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 560); }
			ScriptString MutatorList() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 576); }
			ScriptString RulesString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 588); }
			UTGameReplicationInfo.EFlagState FlagState() { return *cast(UTGameReplicationInfo.EFlagState*)(cast(size_t)cast(void*)this + 572); }
			float WeaponBerserk() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
		}
		bool bStoryMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x4) != 0; }
		bool bStoryMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x4; } return val; }
		bool bAnnouncementsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x20) != 0; }
		bool bAnnouncementsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x20; } return val; }
		bool bConsoleServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x8) != 0; }
		bool bConsoleServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x8; } return val; }
		bool bAllowKeyboardAndMouse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x10) != 0; }
		bool bAllowKeyboardAndMouse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x10; } return val; }
		bool bRequireReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x40) != 0; }
		bool bRequireReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x40; } return val; }
		bool bWarmupRound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x1) != 0; }
		bool bWarmupRound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x1; } return val; }
		bool bForceDefaultCharacter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x2) != 0; }
		bool bForceDefaultCharacter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x2; } return val; }
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
