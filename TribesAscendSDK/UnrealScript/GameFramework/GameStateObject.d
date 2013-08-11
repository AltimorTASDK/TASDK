module UnrealScript.GameFramework.GameStateObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsHandler;

extern(C++) interface GameStateObject : GameplayEventsHandler
{
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
		public @property final auto ref ScriptArray!(int) PlayerIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 4); }
		private ubyte __PlayerIndices[12];
		public @property final auto ref int TeamIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __TeamIndex[4];
	}
	struct PlayerState
	{
		public @property final auto ref float TimeAliveSinceLastDeath() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __TimeAliveSinceLastDeath[4];
		public @property final auto ref float TimeSpawned() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __TimeSpawned[4];
		public @property final auto ref int CurrentTeamIndex() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __CurrentTeamIndex[4];
		public @property final auto ref int PlayerIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PlayerIndex[4];
	}
	public @property final auto ref int MaxRoundNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int RoundNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	public @property final bool bIsRoundStarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
	public @property final bool bIsRoundStarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
	public @property final bool bIsMatchStarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
	public @property final bool bIsMatchStarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	public @property final auto ref GameStateObject.GameSessionType SessionType() { return *cast(GameStateObject.GameSessionType*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref UObject.Array_Mirror PlayerStates() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref UObject.Array_Mirror TeamStates() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 88); }
	final void PreProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31955], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31956], cast(void*)0, cast(void*)0);
	}
}
