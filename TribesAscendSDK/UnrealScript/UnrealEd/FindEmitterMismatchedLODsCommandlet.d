module UnrealScript.UnrealEd.FindEmitterMismatchedLODsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindEmitterMismatchedLODsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindEmitterMismatchedLODsCommandlet")); }
	private static __gshared FindEmitterMismatchedLODsCommandlet mDefaultProperties;
	@property final static FindEmitterMismatchedLODsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindEmitterMismatchedLODsCommandlet)("FindEmitterMismatchedLODsCommandlet UnrealEd.Default__FindEmitterMismatchedLODsCommandlet")); }
}
