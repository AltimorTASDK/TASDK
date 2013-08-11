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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44823], params.ptr, cast(void*)0);
		return *cast(UTCharInfo.CharacterInfo*)&params[12];
	}
	bool AllBotsSpawned()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45171], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	UObject.Color GetHUDColor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45835], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)params.ptr;
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47144], params.ptr, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47147], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47149], cast(void*)0, cast(void*)0);
	}
	void Initialize(int NewTeamIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewTeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47150], params.ptr, cast(void*)0);
	}
	bool NeedsBotMoreThan(UTTeamInfo T)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTTeamInfo*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47152], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetBotOrders(UTBot NewBot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = NewBot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47155], params.ptr, cast(void*)0);
	}
	void RemoveFromTeam(Controller Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47157], params.ptr, cast(void*)0);
	}
	bool BotNameTaken(ScriptString BotName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BotName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47159], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void GetAvailableBotList(ScriptArray!(int)* AvailableBots, ScriptString FactionFilter, bool bMalesOnly)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = *AvailableBots;
		*cast(ScriptString*)&params[12] = FactionFilter;
		*cast(bool*)&params[24] = bMalesOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47165], params.ptr, cast(void*)0);
		*AvailableBots = *cast(ScriptArray!(int)*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47176], cast(void*)0, cast(void*)0);
	}
}
