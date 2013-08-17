module UnrealScript.UnrealEd.FindEmitterModuleLODErrorsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindEmitterModuleLODErrorsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindEmitterModuleLODErrorsCommandlet")()); }
	private static __gshared FindEmitterModuleLODErrorsCommandlet mDefaultProperties;
	@property final static FindEmitterModuleLODErrorsCommandlet DefaultProperties() { mixin(MGDPC!(FindEmitterModuleLODErrorsCommandlet, "FindEmitterModuleLODErrorsCommandlet UnrealEd.Default__FindEmitterModuleLODErrorsCommandlet")()); }
}
