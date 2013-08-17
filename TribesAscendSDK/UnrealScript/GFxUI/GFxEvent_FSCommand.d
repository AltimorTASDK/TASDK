module UnrealScript.GFxUI.GFxEvent_FSCommand;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.GFxUI.GFxFSCmdHandler_Kismet;
import UnrealScript.GFxUI.SwfMovie;

extern(C++) interface GFxEvent_FSCommand : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GFxUI.GFxEvent_FSCommand")()); }
	private static __gshared GFxEvent_FSCommand mDefaultProperties;
	@property final static GFxEvent_FSCommand DefaultProperties() { mixin(MGDPC!(GFxEvent_FSCommand, "GFxEvent_FSCommand GFxUI.Default__GFxEvent_FSCommand")()); }
	@property final auto ref
	{
		GFxFSCmdHandler_Kismet Handler() { mixin(MGPC!("GFxFSCmdHandler_Kismet", 272)()); }
		ScriptString FSCommand() { mixin(MGPC!("ScriptString", 260)()); }
		SwfMovie Movie() { mixin(MGPC!("SwfMovie", 256)()); }
	}
}
