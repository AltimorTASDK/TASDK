module UnrealScript.UTGame.UTSeqAct_SetBotsMustComplete;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_SetBotsMustComplete : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqAct_SetBotsMustComplete")); }
	private static __gshared UTSeqAct_SetBotsMustComplete mDefaultProperties;
	@property final static UTSeqAct_SetBotsMustComplete DefaultProperties() { mixin(MGDPC("UTSeqAct_SetBotsMustComplete", "UTSeqAct_SetBotsMustComplete UTGame.Default__UTSeqAct_SetBotsMustComplete")); }
}
