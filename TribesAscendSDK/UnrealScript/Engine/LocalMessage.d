module UnrealScript.Engine.LocalMessage;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.HUD;

extern(C++) interface LocalMessage : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LocalMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetConsoleColor;
			ScriptFunction mPartiallyDuplicates;
			ScriptFunction mClientReceive;
			ScriptFunction mGetString;
			ScriptFunction mGetColor;
			ScriptFunction mGetPos;
			ScriptFunction mGetFontSize;
			ScriptFunction mGetLifeTime;
			ScriptFunction mIsConsoleMessage;
		}
		public @property static final
		{
			ScriptFunction GetConsoleColor() { return mGetConsoleColor ? mGetConsoleColor : (mGetConsoleColor = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.GetConsoleColor")); }
			ScriptFunction PartiallyDuplicates() { return mPartiallyDuplicates ? mPartiallyDuplicates : (mPartiallyDuplicates = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.PartiallyDuplicates")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.ClientReceive")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.GetString")); }
			ScriptFunction GetColor() { return mGetColor ? mGetColor : (mGetColor = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.GetColor")); }
			ScriptFunction GetPos() { return mGetPos ? mGetPos : (mGetPos = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.GetPos")); }
			ScriptFunction GetFontSize() { return mGetFontSize ? mGetFontSize : (mGetFontSize = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.GetFontSize")); }
			ScriptFunction GetLifeTime() { return mGetLifeTime ? mGetLifeTime : (mGetLifeTime = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.GetLifeTime")); }
			ScriptFunction IsConsoleMessage() { return mIsConsoleMessage ? mIsConsoleMessage : (mIsConsoleMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalMessage.IsConsoleMessage")); }
		}
	}
	@property final
	{
		auto ref
		{
			float Lifetime() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
			int FontSize() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
			float PosY() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			UObject.Color DrawColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 68); }
		}
		bool bBeep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
		bool bBeep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
		bool bIsSpecial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bIsSpecial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
		bool bIsUnique() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bIsUnique(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool bCountInstances() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
		bool bCountInstances(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
		bool bIsPartiallyUnique() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool bIsPartiallyUnique(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool bIsConsoleMessage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool bIsConsoleMessage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
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
	static bool PartiallyDuplicates(int Switch1, int Switch2, UObject OptionalObject1, UObject OptionalObject2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch1;
		*cast(int*)&params[4] = Switch2;
		*cast(UObject*)&params[8] = OptionalObject1;
		*cast(UObject*)&params[12] = OptionalObject2;
		StaticClass.ProcessEvent(Functions.PartiallyDuplicates, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
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
	static UObject.Color GetColor(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(UObject*)&params[12] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
	}
	static float GetPos(int Switch, HUD myHUD)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(HUD*)&params[4] = myHUD;
		StaticClass.ProcessEvent(Functions.GetPos, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static int GetFontSize(int Switch, PlayerReplicationInfo RelatedPRI1, PlayerReplicationInfo RelatedPRI2, PlayerReplicationInfo pLocalPlayer)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI2;
		*cast(PlayerReplicationInfo*)&params[12] = pLocalPlayer;
		StaticClass.ProcessEvent(Functions.GetFontSize, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	static float GetLifeTime(int Switch)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		StaticClass.ProcessEvent(Functions.GetLifeTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static bool IsConsoleMessage(int Switch)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		StaticClass.ProcessEvent(Functions.IsConsoleMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
