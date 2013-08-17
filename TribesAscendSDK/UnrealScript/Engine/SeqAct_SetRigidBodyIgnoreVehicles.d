module UnrealScript.Engine.SeqAct_SetRigidBodyIgnoreVehicles;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetRigidBodyIgnoreVehicles : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetRigidBodyIgnoreVehicles")()); }
	private static __gshared SeqAct_SetRigidBodyIgnoreVehicles mDefaultProperties;
	@property final static SeqAct_SetRigidBodyIgnoreVehicles DefaultProperties() { mixin(MGDPC!(SeqAct_SetRigidBodyIgnoreVehicles, "SeqAct_SetRigidBodyIgnoreVehicles Engine.Default__SeqAct_SetRigidBodyIgnoreVehicles")()); }
}
