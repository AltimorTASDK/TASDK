module UnrealScript.UnrealEd.LevelExporterOBJ;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface LevelExporterOBJ : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LevelExporterOBJ")); }
}
