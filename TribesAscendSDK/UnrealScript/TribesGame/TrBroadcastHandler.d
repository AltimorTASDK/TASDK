module UnrealScript.TribesGame.TrBroadcastHandler;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.BroadcastHandler;
import UnrealScript.TribesGame.TrSpottedTarget;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;

extern(C++) interface TrBroadcastHandler : BroadcastHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrBroadcastHandler")()); }
	private static __gshared TrBroadcastHandler mDefaultProperties;
	@property final static TrBroadcastHandler DefaultProperties() { mixin(MGDPC!(TrBroadcastHandler, "TrBroadcastHandler TribesGame.Default__TrBroadcastHandler")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTeamBroadcastVGSCommand;
			ScriptFunction mGlobalBroadcastVGSCommand;
			ScriptFunction mTeamBroadcastVGSContextCommand;
			ScriptFunction mOnActorSpotted;
			ScriptFunction mUpdateSpottedActorsTimer;
		}
		public @property static final
		{
			ScriptFunction TeamBroadcastVGSCommand() { mixin(MGF!("mTeamBroadcastVGSCommand", "Function TribesGame.TrBroadcastHandler.TeamBroadcastVGSCommand")()); }
			ScriptFunction GlobalBroadcastVGSCommand() { mixin(MGF!("mGlobalBroadcastVGSCommand", "Function TribesGame.TrBroadcastHandler.GlobalBroadcastVGSCommand")()); }
			ScriptFunction TeamBroadcastVGSContextCommand() { mixin(MGF!("mTeamBroadcastVGSContextCommand", "Function TribesGame.TrBroadcastHandler.TeamBroadcastVGSContextCommand")()); }
			ScriptFunction OnActorSpotted() { mixin(MGF!("mOnActorSpotted", "Function TribesGame.TrBroadcastHandler.OnActorSpotted")()); }
			ScriptFunction UpdateSpottedActorsTimer() { mixin(MGF!("mUpdateSpottedActorsTimer", "Function TribesGame.TrBroadcastHandler.UpdateSpottedActorsTimer")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrSpottedTarget) m_SpottedTargets() { mixin(MGPC!(ScriptArray!(TrSpottedTarget), 484)()); }
		float m_fSpottedActorsUpdateFrequency() { mixin(MGPC!(float, 496)()); }
	}
final:
	void TeamBroadcastVGSCommand(PlayerReplicationInfo SenderPRI, TrVGSCommandList.VGSCommandType VGSCommandIndex)
	{
		ubyte params[5];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(TrVGSCommandList.VGSCommandType*)&params[4] = VGSCommandIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamBroadcastVGSCommand, params.ptr, cast(void*)0);
	}
	void GlobalBroadcastVGSCommand(PlayerReplicationInfo SenderPRI, TrVGSCommandList.VGSCommandType VGSCommandIndex)
	{
		ubyte params[5];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(TrVGSCommandList.VGSCommandType*)&params[4] = VGSCommandIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GlobalBroadcastVGSCommand, params.ptr, cast(void*)0);
	}
	void TeamBroadcastVGSContextCommand(PlayerReplicationInfo SenderPRI, TrVGSCommandList.EVGSContextActor ContextActor, TrVGSCommandList.EVGSContextLocation ContextLocation, bool bEnemyLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(TrVGSCommandList.EVGSContextActor*)&params[4] = ContextActor;
		*cast(TrVGSCommandList.EVGSContextLocation*)&params[5] = ContextLocation;
		*cast(bool*)&params[8] = bEnemyLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamBroadcastVGSContextCommand, params.ptr, cast(void*)0);
	}
	void OnActorSpotted(Actor SpottedActor, ScriptClass SpottedTargetClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = SpottedActor;
		*cast(ScriptClass*)&params[4] = SpottedTargetClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnActorSpotted, params.ptr, cast(void*)0);
	}
	void UpdateSpottedActorsTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpottedActorsTimer, cast(void*)0, cast(void*)0);
	}
}
