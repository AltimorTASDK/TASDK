module UnrealScript.UTGame.UTTeamInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTCharInfo;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.UTGame.UTTeamAI;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.TeamInfo;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTTeamInfo : TeamInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTeamInfo")()); }
	private static __gshared UTTeamInfo mDefaultProperties;
	@property final static UTTeamInfo DefaultProperties() { mixin(MGDPC!(UTTeamInfo, "UTTeamInfo UTGame.Default__UTTeamInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBotInfo;
			ScriptFunction mAllBotsSpawned;
			ScriptFunction mGetHUDColor;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mReset;
			ScriptFunction mInitialize;
			ScriptFunction mNeedsBotMoreThan;
			ScriptFunction mSetBotOrders;
			ScriptFunction mRemoveFromTeam;
			ScriptFunction mBotNameTaken;
			ScriptFunction mGetAvailableBotList;
			ScriptFunction mDestroyed;
		}
		public @property static final
		{
			ScriptFunction GetBotInfo() { mixin(MGF!("mGetBotInfo", "Function UTGame.UTTeamInfo.GetBotInfo")()); }
			ScriptFunction AllBotsSpawned() { mixin(MGF!("mAllBotsSpawned", "Function UTGame.UTTeamInfo.AllBotsSpawned")()); }
			ScriptFunction GetHUDColor() { mixin(MGF!("mGetHUDColor", "Function UTGame.UTTeamInfo.GetHUDColor")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function UTGame.UTTeamInfo.ReplicatedEvent")()); }
			ScriptFunction GetHumanReadableName() { mixin(MGF!("mGetHumanReadableName", "Function UTGame.UTTeamInfo.GetHumanReadableName")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function UTGame.UTTeamInfo.Reset")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function UTGame.UTTeamInfo.Initialize")()); }
			ScriptFunction NeedsBotMoreThan() { mixin(MGF!("mNeedsBotMoreThan", "Function UTGame.UTTeamInfo.NeedsBotMoreThan")()); }
			ScriptFunction SetBotOrders() { mixin(MGF!("mSetBotOrders", "Function UTGame.UTTeamInfo.SetBotOrders")()); }
			ScriptFunction RemoveFromTeam() { mixin(MGF!("mRemoveFromTeam", "Function UTGame.UTTeamInfo.RemoveFromTeam")()); }
			ScriptFunction BotNameTaken() { mixin(MGF!("mBotNameTaken", "Function UTGame.UTTeamInfo.BotNameTaken")()); }
			ScriptFunction GetAvailableBotList() { mixin(MGF!("mGetAvailableBotList", "Function UTGame.UTTeamInfo.GetAvailableBotList")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTTeamInfo.Destroyed")()); }
		}
	}
	@property final auto ref
	{
		ScriptString Faction() { mixin(MGPC!(ScriptString, 520)()); }
		UTCarriedObject TeamFlag() { mixin(MGPC!(UTCarriedObject, 516)()); }
		UTTeamAI AI() { mixin(MGPC!(UTTeamAI, 508)()); }
		UTGameObjective HomeBase() { mixin(MGPC!(UTGameObjective, 512)()); }
		ScriptString TeamColorNames() { mixin(MGPC!(ScriptString, 548)()); }
		UObject.Color BaseTeamColor() { mixin(MGPC!(UObject.Color, 532)()); }
		int DesiredTeamSize() { mixin(MGPC!(int, 504)()); }
	}
final:
	UTCharInfo.CharacterInfo GetBotInfo(ScriptString BotName)
	{
		ubyte params[124];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BotName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBotInfo, params.ptr, cast(void*)0);
		return *cast(UTCharInfo.CharacterInfo*)&params[12];
	}
	bool AllBotsSpawned()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllBotsSpawned, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	UObject.Color GetHUDColor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHUDColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)params.ptr;
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void Initialize(int NewTeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewTeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
	}
	bool NeedsBotMoreThan(UTTeamInfo T)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTTeamInfo*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedsBotMoreThan, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetBotOrders(UTBot NewBot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = NewBot;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBotOrders, params.ptr, cast(void*)0);
	}
	void RemoveFromTeam(Controller Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromTeam, params.ptr, cast(void*)0);
	}
	bool BotNameTaken(ScriptString BotName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BotName;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotNameTaken, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void GetAvailableBotList(ref ScriptArray!(int) AvailableBots, ScriptString FactionFilter, bool bMalesOnly)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = AvailableBots;
		*cast(ScriptString*)&params[12] = FactionFilter;
		*cast(bool*)&params[24] = bMalesOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAvailableBotList, params.ptr, cast(void*)0);
		*AvailableBots = *cast(ScriptArray!(int)*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
