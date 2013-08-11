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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73676], params.ptr, cast(void*)0);
	}
	void GlobalBroadcastVGSCommand(PlayerReplicationInfo SenderPRI, TrVGSCommandList.VGSCommandType VGSCommandIndex)
	{
		ubyte params[5];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(TrVGSCommandList.VGSCommandType*)&params[4] = VGSCommandIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73680], params.ptr, cast(void*)0);
	}
	void TeamBroadcastVGSContextCommand(PlayerReplicationInfo SenderPRI, TrVGSCommandList.EVGSContextActor ContextActor, TrVGSCommandList.EVGSContextLocation ContextLocation, bool bEnemyLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(TrVGSCommandList.EVGSContextActor*)&params[4] = ContextActor;
		*cast(TrVGSCommandList.EVGSContextLocation*)&params[5] = ContextLocation;
		*cast(bool*)&params[8] = bEnemyLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73684], params.ptr, cast(void*)0);
	}
	void OnActorSpotted(Actor SpottedActor, ScriptClass SpottedTargetClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = SpottedActor;
		*cast(ScriptClass*)&params[4] = SpottedTargetClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73690], params.ptr, cast(void*)0);
	}
	void UpdateSpottedActorsTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73698], cast(void*)0, cast(void*)0);
	}
}
