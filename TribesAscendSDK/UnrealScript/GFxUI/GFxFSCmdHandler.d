module UnrealScript.GFxUI.GFxFSCmdHandler;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxEvent_FSCommand;

extern(C++) interface GFxFSCmdHandler : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxFSCmdHandler")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFSCommand;
		public @property static final ScriptFunction FSCommand() { return mFSCommand ? mFSCommand : (mFSCommand = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxFSCmdHandler.FSCommand")); }
	}
	final bool FSCommand(GFxMoviePlayer Movie, GFxEvent_FSCommand Event, ScriptString Cmd, ScriptString Arg)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxMoviePlayer*)params.ptr = Movie;
		*cast(GFxEvent_FSCommand*)&params[4] = Event;
		*cast(ScriptString*)&params[8] = Cmd;
		*cast(ScriptString*)&params[20] = Arg;
		(cast(ScriptObject)this).ProcessEvent(Functions.FSCommand, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
}
