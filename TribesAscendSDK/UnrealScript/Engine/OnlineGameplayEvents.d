module UnrealScript.Engine.OnlineGameplayEvents;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineGameplayEvents : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineGameplayEvents")); }
	struct PlayerInformation
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameplayEvents.PlayerInformation")); }
		@property final
		{
			auto ref
			{
				int LastPlayerEventIdx() { return *cast(int*)(cast(size_t)&this + 36); }
				OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 24); }
				ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
				ScriptString ControllerName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bIsBot() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bIsBot(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		}
	}
	struct GameplayEvent
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameplayEvents.GameplayEvent")); }
		@property final auto ref
		{
			int EventNameAndDesc() { return *cast(int*)(cast(size_t)&this + 4); }
			int PlayerEventAndTarget() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct PlayerEvent
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameplayEvents.PlayerEvent")); }
		@property final auto ref
		{
			int PlayerPitchAndRoll() { return *cast(int*)(cast(size_t)&this + 20); }
			int PlayerIndexAndYaw() { return *cast(int*)(cast(size_t)&this + 16); }
			Vector EventLocation() { return *cast(Vector*)(cast(size_t)&this + 4); }
			float EventTime() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(OnlineGameplayEvents.PlayerInformation) PlayerList() { return *cast(ScriptArray!(OnlineGameplayEvents.PlayerInformation)*)(cast(size_t)cast(void*)this + 60); }
			ScriptArray!(ScriptString) EventDescList() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 72); }
			ScriptArray!(ScriptName) EventNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 84); }
			// WARNING: Property 'GameplayEvents' has the same name as a defined type!
			// WARNING: Property 'PlayerEvents' has the same name as a defined type!
			UObject.Guid GameplaySessionID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 136); }
			ScriptString GameplaySessionStartTime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bGameplaySessionInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool bGameplaySessionInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	}
}
