module UnrealScript.Engine.ProcBuilding_SimpleLODActor;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshActor;

extern(C++) interface ProcBuilding_SimpleLODActor : StaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ProcBuilding_SimpleLODActor")); }
}
