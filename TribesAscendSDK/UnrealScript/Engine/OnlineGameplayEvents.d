module UnrealScript.Engine.OnlineGameplayEvents;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineGameplayEvents : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.OnlineGameplayEvents")); }
	private static __gshared OnlineGameplayEvents mDefaultProperties;
	@property final static OnlineGameplayEvents DefaultProperties() { mixin(MGDPC("OnlineGameplayEvents", "OnlineGameplayEvents Engine.Default__OnlineGameplayEvents")); }
	struct PlayerInformation
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameplayEvents.PlayerInformation")); }
		@property final
		{
			auto ref
			{
				int LastPlayerEventIdx() { mixin(MGPS("int", 36)); }
				OnlineSubsystem.UniqueNetId UniqueId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 24)); }
				ScriptString PlayerName() { mixin(MGPS("ScriptString", 12)); }
				ScriptString ControllerName() { mixin(MGPS("ScriptString", 0)); }
			}
			bool bIsBot() { mixin(MGBPS(32, 0x1)); }
			bool bIsBot(bool val) { mixin(MSBPS(32, 0x1)); }
		}
	}
	struct GameplayEvent
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameplayEvents.GameplayEvent")); }
		@property final auto ref
		{
			int EventNameAndDesc() { mixin(MGPS("int", 4)); }
			int PlayerEventAndTarget() { mixin(MGPS("int", 0)); }
		}
	}
	struct PlayerEvent
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameplayEvents.PlayerEvent")); }
		@property final auto ref
		{
			int PlayerPitchAndRoll() { mixin(MGPS("int", 20)); }
			int PlayerIndexAndYaw() { mixin(MGPS("int", 16)); }
			Vector EventLocation() { mixin(MGPS("Vector", 4)); }
			float EventTime() { mixin(MGPS("float", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(OnlineGameplayEvents.PlayerInformation) PlayerList() { mixin(MGPC("ScriptArray!(OnlineGameplayEvents.PlayerInformation)", 60)); }
			ScriptArray!(ScriptString) EventDescList() { mixin(MGPC("ScriptArray!(ScriptString)", 72)); }
			ScriptArray!(ScriptName) EventNames() { mixin(MGPC("ScriptArray!(ScriptName)", 84)); }
			ScriptArray!(OnlineGameplayEvents.GameplayEvent) GameplayEventsVar() { mixin(MGPC("ScriptArray!(OnlineGameplayEvents.GameplayEvent)", 96)); }
			ScriptArray!(OnlineGameplayEvents.PlayerEvent) PlayerEventsVar() { mixin(MGPC("ScriptArray!(OnlineGameplayEvents.PlayerEvent)", 108)); }
			UObject.Guid GameplaySessionID() { mixin(MGPC("UObject.Guid", 136)); }
			ScriptString GameplaySessionStartTime() { mixin(MGPC("ScriptString", 120)); }
		}
		bool bGameplaySessionInProgress() { mixin(MGBPC(132, 0x1)); }
		bool bGameplaySessionInProgress(bool val) { mixin(MSBPC(132, 0x1)); }
	}
}
