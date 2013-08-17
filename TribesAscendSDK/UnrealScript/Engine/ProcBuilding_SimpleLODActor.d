module UnrealScript.Engine.ProcBuilding_SimpleLODActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.StaticMeshActor;

extern(C++) interface ProcBuilding_SimpleLODActor : StaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ProcBuilding_SimpleLODActor")()); }
	private static __gshared ProcBuilding_SimpleLODActor mDefaultProperties;
	@property final static ProcBuilding_SimpleLODActor DefaultProperties() { mixin(MGDPC!(ProcBuilding_SimpleLODActor, "ProcBuilding_SimpleLODActor Engine.Default__ProcBuilding_SimpleLODActor")()); }
}
