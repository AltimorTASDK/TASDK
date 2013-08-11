module UnrealScript.Engine.OnlineGameplayEvents;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineGameplayEvents : UObject
{
	struct PlayerInformation
	{
		public @property final auto ref int LastPlayerEventIdx() { return *cast(int*)(cast(size_t)&this + 36); }
		private ubyte __LastPlayerEventIdx[4];
		public @property final bool bIsBot() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
		public @property final bool bIsBot(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		private ubyte __bIsBot[4];
		public @property final auto ref OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 24); }
		private ubyte __UniqueId[8];
		public @property final auto ref ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __PlayerName[12];
		public @property final auto ref ScriptString ControllerName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __ControllerName[12];
	}
	struct GameplayEvent
	{
		public @property final auto ref int EventNameAndDesc() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __EventNameAndDesc[4];
		public @property final auto ref int PlayerEventAndTarget() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PlayerEventAndTarget[4];
	}
	struct PlayerEvent
	{
		public @property final auto ref int PlayerPitchAndRoll() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __PlayerPitchAndRoll[4];
		public @property final auto ref int PlayerIndexAndYaw() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __PlayerIndexAndYaw[4];
		public @property final auto ref Vector EventLocation() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __EventLocation[12];
		public @property final auto ref float EventTime() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __EventTime[4];
	}
	public @property final auto ref ScriptArray!(OnlineGameplayEvents.PlayerInformation) PlayerList() { return *cast(ScriptArray!(OnlineGameplayEvents.PlayerInformation)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(ScriptString) EventDescList() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(ScriptName) EventNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 84); }
	// WARNING: Property 'GameplayEvents' has the same name as a defined type!
	// WARNING: Property 'PlayerEvents' has the same name as a defined type!
	public @property final auto ref UObject.Guid GameplaySessionID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 136); }
	public @property final bool bGameplaySessionInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
	public @property final bool bGameplaySessionInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	public @property final auto ref ScriptString GameplaySessionStartTime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
}
