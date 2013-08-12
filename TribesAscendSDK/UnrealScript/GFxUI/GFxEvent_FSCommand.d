module UnrealScript.GFxUI.GFxEvent_FSCommand;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.GFxUI.GFxFSCmdHandler_Kismet;
import UnrealScript.GFxUI.SwfMovie;

extern(C++) interface GFxEvent_FSCommand : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxEvent_FSCommand")); }
	private static __gshared GFxEvent_FSCommand mDefaultProperties;
	@property final static GFxEvent_FSCommand DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxEvent_FSCommand)("GFxEvent_FSCommand GFxUI.Default__GFxEvent_FSCommand")); }
	@property final auto ref
	{
		GFxFSCmdHandler_Kismet Handler() { return *cast(GFxFSCmdHandler_Kismet*)(cast(size_t)cast(void*)this + 272); }
		ScriptString FSCommand() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 260); }
		SwfMovie Movie() { return *cast(SwfMovie*)(cast(size_t)cast(void*)this + 256); }
	}
}
