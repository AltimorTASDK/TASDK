module UnrealScript.TribesGame.TrBroadcastHandler;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.BroadcastHandler;
import UnrealScript.TribesGame.TrSpottedTarget;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;

extern(C++) interface TrBroadcastHandler : BroadcastHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrBroadcastHandler")); }
	private static __gshared TrBroadcastHandler mDefaultProperties;
	@property final static TrBroadcastHandler DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrBroadcastHandler)("TrBroadcastHandler TribesGame.Default__TrBroadcastHandler")); }
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
			ScriptFunction TeamBroadcastVGSCommand() { return mTeamBroadcastVGSCommand ? mTeamBroadcastVGSCommand : (mTeamBroadcastVGSCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBroadcastHandler.TeamBroadcastVGSCommand")); }
			ScriptFunction GlobalBroadcastVGSCommand() { return mGlobalBroadcastVGSCommand ? mGlobalBroadcastVGSCommand : (mGlobalBroadcastVGSCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBroadcastHandler.GlobalBroadcastVGSCommand")); }
			ScriptFunction TeamBroadcastVGSContextCommand() { return mTeamBroadcastVGSContextCommand ? mTeamBroadcastVGSContextCommand : (mTeamBroadcastVGSContextCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBroadcastHandler.TeamBroadcastVGSContextCommand")); }
			ScriptFunction OnActorSpotted() { return mOnActorSpotted ? mOnActorSpotted : (mOnActorSpotted = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBroadcastHandler.OnActorSpotted")); }
			ScriptFunction UpdateSpottedActorsTimer() { return mUpdateSpottedActorsTimer ? mUpdateSpottedActorsTimer : (mUpdateSpottedActorsTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBroadcastHandler.UpdateSpottedActorsTimer")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrSpottedTarget) m_SpottedTargets() { return *cast(ScriptArray!(TrSpottedTarget)*)(cast(size_t)cast(void*)this + 484); }
		float m_fSpottedActorsUpdateFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
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
