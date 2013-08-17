module UnrealScript.GameFramework.GameStateObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsHandler;

extern(C++) interface GameStateObject : GameplayEventsHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameStateObject")); }
	private static __gshared GameStateObject mDefaultProperties;
	@property final static GameStateObject DefaultProperties() { mixin(MGDPC("GameStateObject", "GameStateObject GameFramework.Default__GameStateObject")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreProcessStream;
			ScriptFunction mReset;
		}
		public @property static final
		{
			ScriptFunction PreProcessStream() { mixin(MGF("mPreProcessStream", "Function GameFramework.GameStateObject.PreProcessStream")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function GameFramework.GameStateObject.Reset")); }
		}
	}
	enum GameSessionType : ubyte
	{
		GT_SessionInvalid = 0,
		GT_SinglePlayer = 1,
		GT_Coop = 2,
		GT_Multiplayer = 3,
		GT_MAX = 4,
	}
	struct TeamState
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameStateObject.TeamState")); }
		@property final auto ref
		{
			ScriptArray!(int) PlayerIndices() { mixin(MGPS("ScriptArray!(int)", 4)); }
			int TeamIndex() { mixin(MGPS("int", 0)); }
		}
	}
	struct PlayerState
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameStateObject.PlayerState")); }
		@property final auto ref
		{
			float TimeAliveSinceLastDeath() { mixin(MGPS("float", 12)); }
			float TimeSpawned() { mixin(MGPS("float", 8)); }
			int CurrentTeamIndex() { mixin(MGPS("int", 4)); }
			int PlayerIndex() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			int MaxRoundNumber() { mixin(MGPC("int", 124)); }
			int RoundNumber() { mixin(MGPC("int", 120)); }
			GameStateObject.GameSessionType SessionType() { mixin(MGPC("GameStateObject.GameSessionType", 112)); }
			UObject.Array_Mirror PlayerStates() { mixin(MGPC("UObject.Array_Mirror", 100)); }
			UObject.Array_Mirror TeamStates() { mixin(MGPC("UObject.Array_Mirror", 88)); }
		}
		bool bIsRoundStarted() { mixin(MGBPC(116, 0x2)); }
		bool bIsRoundStarted(bool val) { mixin(MSBPC(116, 0x2)); }
		bool bIsMatchStarted() { mixin(MGBPC(116, 0x1)); }
		bool bIsMatchStarted(bool val) { mixin(MSBPC(116, 0x1)); }
	}
final:
	void PreProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreProcessStream, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
}
