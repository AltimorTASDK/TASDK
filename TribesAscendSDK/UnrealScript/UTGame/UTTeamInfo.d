module UnrealScript.UTGame.UTTeamInfo;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeamInfo")); }
	private static __gshared UTTeamInfo mDefaultProperties;
	@property final static UTTeamInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTeamInfo)("UTTeamInfo UTGame.Default__UTTeamInfo")); }
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
			ScriptFunction GetBotInfo() { return mGetBotInfo ? mGetBotInfo : (mGetBotInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.GetBotInfo")); }
			ScriptFunction AllBotsSpawned() { return mAllBotsSpawned ? mAllBotsSpawned : (mAllBotsSpawned = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.AllBotsSpawned")); }
			ScriptFunction GetHUDColor() { return mGetHUDColor ? mGetHUDColor : (mGetHUDColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.GetHUDColor")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.ReplicatedEvent")); }
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.GetHumanReadableName")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.Reset")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.Initialize")); }
			ScriptFunction NeedsBotMoreThan() { return mNeedsBotMoreThan ? mNeedsBotMoreThan : (mNeedsBotMoreThan = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.NeedsBotMoreThan")); }
			ScriptFunction SetBotOrders() { return mSetBotOrders ? mSetBotOrders : (mSetBotOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.SetBotOrders")); }
			ScriptFunction RemoveFromTeam() { return mRemoveFromTeam ? mRemoveFromTeam : (mRemoveFromTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.RemoveFromTeam")); }
			ScriptFunction BotNameTaken() { return mBotNameTaken ? mBotNameTaken : (mBotNameTaken = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.BotNameTaken")); }
			ScriptFunction GetAvailableBotList() { return mGetAvailableBotList ? mGetAvailableBotList : (mGetAvailableBotList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.GetAvailableBotList")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamInfo.Destroyed")); }
		}
	}
	@property final auto ref
	{
		ScriptString Faction() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 520); }
		UTCarriedObject TeamFlag() { return *cast(UTCarriedObject*)(cast(size_t)cast(void*)this + 516); }
		UTTeamAI AI() { return *cast(UTTeamAI*)(cast(size_t)cast(void*)this + 508); }
		UTGameObjective HomeBase() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 512); }
		ScriptString TeamColorNames() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 548); }
		UObject.Color BaseTeamColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 532); }
		int DesiredTeamSize() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
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
	void GetAvailableBotList(ScriptArray!(int)* AvailableBots, ScriptString FactionFilter, bool bMalesOnly)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = *AvailableBots;
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
