module UnrealScript.UTGame.UTSeqAct_ExitVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ExitVehicle : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqAct_ExitVehicle")); }
	private static __gshared UTSeqAct_ExitVehicle mDefaultProperties;
	@property final static UTSeqAct_ExitVehicle DefaultProperties() { mixin(MGDPC("UTSeqAct_ExitVehicle", "UTSeqAct_ExitVehicle UTGame.Default__UTSeqAct_ExitVehicle")); }
}
