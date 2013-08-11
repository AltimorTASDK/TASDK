module UnrealScript.GFxUI.GFxFSCmdHandler;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxEvent_FSCommand;

extern(C++) interface GFxFSCmdHandler : UObject
{
public extern(D):
	final bool FSCommand(GFxMoviePlayer Movie, GFxEvent_FSCommand Event, ScriptString Cmd, ScriptString Arg)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxMoviePlayer*)params.ptr = Movie;
		*cast(GFxEvent_FSCommand*)&params[4] = Event;
		*cast(ScriptString*)&params[8] = Cmd;
		*cast(ScriptString*)&params[20] = Arg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30290], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
}
