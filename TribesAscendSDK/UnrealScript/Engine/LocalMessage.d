module UnrealScript.Engine.LocalMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.HUD;

extern(C++) interface LocalMessage : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LocalMessage")()); }
	private static __gshared LocalMessage mDefaultProperties;
	@property final static LocalMessage DefaultProperties() { mixin(MGDPC!(LocalMessage, "LocalMessage Engine.Default__LocalMessage")()); }
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
			ScriptFunction GetConsoleColor() { mixin(MGF!("mGetConsoleColor", "Function Engine.LocalMessage.GetConsoleColor")()); }
			ScriptFunction PartiallyDuplicates() { mixin(MGF!("mPartiallyDuplicates", "Function Engine.LocalMessage.PartiallyDuplicates")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function Engine.LocalMessage.ClientReceive")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function Engine.LocalMessage.GetString")()); }
			ScriptFunction GetColor() { mixin(MGF!("mGetColor", "Function Engine.LocalMessage.GetColor")()); }
			ScriptFunction GetPos() { mixin(MGF!("mGetPos", "Function Engine.LocalMessage.GetPos")()); }
			ScriptFunction GetFontSize() { mixin(MGF!("mGetFontSize", "Function Engine.LocalMessage.GetFontSize")()); }
			ScriptFunction GetLifeTime() { mixin(MGF!("mGetLifeTime", "Function Engine.LocalMessage.GetLifeTime")()); }
			ScriptFunction IsConsoleMessage() { mixin(MGF!("mIsConsoleMessage", "Function Engine.LocalMessage.IsConsoleMessage")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float Lifetime() { mixin(MGPC!("float", 64)()); }
			int FontSize() { mixin(MGPC!("int", 76)()); }
			float PosY() { mixin(MGPC!("float", 72)()); }
			UObject.Color DrawColor() { mixin(MGPC!("UObject.Color", 68)()); }
		}
		bool bBeep() { mixin(MGBPC!(60, 0x10)()); }
		bool bBeep(bool val) { mixin(MSBPC!(60, 0x10)()); }
		bool bIsSpecial() { mixin(MGBPC!(60, 0x1)()); }
		bool bIsSpecial(bool val) { mixin(MSBPC!(60, 0x1)()); }
		bool bIsUnique() { mixin(MGBPC!(60, 0x2)()); }
		bool bIsUnique(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool bCountInstances() { mixin(MGBPC!(60, 0x20)()); }
		bool bCountInstances(bool val) { mixin(MSBPC!(60, 0x20)()); }
		bool bIsPartiallyUnique() { mixin(MGBPC!(60, 0x4)()); }
		bool bIsPartiallyUnique(bool val) { mixin(MSBPC!(60, 0x4)()); }
		bool bIsConsoleMessage() { mixin(MGBPC!(60, 0x8)()); }
		bool bIsConsoleMessage(bool val) { mixin(MSBPC!(60, 0x8)()); }
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
	static void ClientReceive(PlayerController P, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		if (Switch !is null)
			*cast(int*)&params[4] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
	static ScriptString GetString(int* Switch = null, bool* bPRI1HUD = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[32];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (bPRI1HUD !is null)
			*cast(bool*)&params[4] = *bPRI1HUD;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static UObject.Color GetColor(int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[4] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[12] = *OptionalObject;
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
