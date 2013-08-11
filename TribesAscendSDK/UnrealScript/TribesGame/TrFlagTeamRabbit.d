module UnrealScript.TribesGame.TrFlagTeamRabbit;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrFlagTeamRabbit : TrFlagBase
{
	final void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88641], params.ptr, cast(void*)0);
	}
	final void ClearHolder()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88643], cast(void*)0, cast(void*)0);
	}
	final void SendHome(Controller Returner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Returner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88644], params.ptr, cast(void*)0);
	}
	final void BroadcastReturnedMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88646], cast(void*)0, cast(void*)0);
	}
	final void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88655], cast(void*)0, cast(void*)0);
	}
}
