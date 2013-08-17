module UnrealScript.GFxUI.GFxFSCmdHandler_Kismet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxFSCmdHandler;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxEvent_FSCommand;

extern(C++) interface GFxFSCmdHandler_Kismet : GFxFSCmdHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GFxUI.GFxFSCmdHandler_Kismet")()); }
	private static __gshared GFxFSCmdHandler_Kismet mDefaultProperties;
	@property final static GFxFSCmdHandler_Kismet DefaultProperties() { mixin(MGDPC!(GFxFSCmdHandler_Kismet, "GFxFSCmdHandler_Kismet GFxUI.Default__GFxFSCmdHandler_Kismet")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFSCommand;
		public @property static final ScriptFunction FSCommand() { mixin(MGF!("mFSCommand", "Function GFxUI.GFxFSCmdHandler_Kismet.FSCommand")()); }
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
