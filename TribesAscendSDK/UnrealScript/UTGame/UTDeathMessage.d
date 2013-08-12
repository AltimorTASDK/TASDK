module UnrealScript.UTGame.UTDeathMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;

extern(C++) interface UTDeathMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDeathMessage")); }
	private static __gshared UTDeathMessage mDefaultProperties;
	@property final static UTDeathMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDeathMessage)("UTDeathMessage UTGame.Default__UTDeathMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetConsoleColor;
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetConsoleColor() { return mGetConsoleColor ? mGetConsoleColor : (mGetConsoleColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDeathMessage.GetConsoleColor")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDeathMessage.GetString")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDeathMessage.ClientReceive")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString SomeoneString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
			ScriptString KilledString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
		}
		bool bNoConsoleDeathMessages() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool bNoConsoleDeathMessages(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	}
final:
	static UObject.Color GetConsoleColor(PlayerReplicationInfo RelatedPRI_1)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = RelatedPRI_1;
		StaticClass.ProcessEvent(Functions.GetConsoleColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[4];
	}
	static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
}
