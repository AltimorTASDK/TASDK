module UnrealScript.UTGame.UTSeqAct_ExitVehicle;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ExitVehicle : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_ExitVehicle")); }
	private static __gshared UTSeqAct_ExitVehicle mDefaultProperties;
	@property final static UTSeqAct_ExitVehicle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_ExitVehicle)("UTSeqAct_ExitVehicle UTGame.Default__UTSeqAct_ExitVehicle")); }
}
