module UnrealScript.UnrealEd.FindEmitterModuleLODErrorsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindEmitterModuleLODErrorsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindEmitterModuleLODErrorsCommandlet")); }
	private static __gshared FindEmitterModuleLODErrorsCommandlet mDefaultProperties;
	@property final static FindEmitterModuleLODErrorsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindEmitterModuleLODErrorsCommandlet)("FindEmitterModuleLODErrorsCommandlet UnrealEd.Default__FindEmitterModuleLODErrorsCommandlet")); }
}
