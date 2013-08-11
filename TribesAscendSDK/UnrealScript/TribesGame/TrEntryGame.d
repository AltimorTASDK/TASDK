module UnrealScript.TribesGame.TrEntryGame;

import ScriptClasses;
import UnrealScript.UTGame.UTEntryGame;

extern(C++) interface TrEntryGame : UTEntryGame
{
public extern(D):
final:
	void SendMenuEngineLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87278], cast(void*)0, cast(void*)0);
	}
	ScriptClass SetGameType(ScriptString MapName, ScriptString Options, ScriptString Portal)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		*cast(ScriptString*)&params[12] = Options;
		*cast(ScriptString*)&params[24] = Portal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87279], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[36];
	}
	void OnEngineHasLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87284], cast(void*)0, cast(void*)0);
	}
}
