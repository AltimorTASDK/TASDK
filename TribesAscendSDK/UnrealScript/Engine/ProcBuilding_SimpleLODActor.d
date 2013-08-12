module UnrealScript.Engine.ProcBuilding_SimpleLODActor;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshActor;

extern(C++) interface ProcBuilding_SimpleLODActor : StaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ProcBuilding_SimpleLODActor")); }
	private static __gshared ProcBuilding_SimpleLODActor mDefaultProperties;
	@property final static ProcBuilding_SimpleLODActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ProcBuilding_SimpleLODActor)("ProcBuilding_SimpleLODActor Engine.Default__ProcBuilding_SimpleLODActor")); }
}
