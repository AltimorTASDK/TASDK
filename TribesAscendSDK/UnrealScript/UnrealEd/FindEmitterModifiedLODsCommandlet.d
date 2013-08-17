module UnrealScript.UnrealEd.FindEmitterModifiedLODsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindEmitterModifiedLODsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindEmitterModifiedLODsCommandlet")()); }
	private static __gshared FindEmitterModifiedLODsCommandlet mDefaultProperties;
	@property final static FindEmitterModifiedLODsCommandlet DefaultProperties() { mixin(MGDPC!(FindEmitterModifiedLODsCommandlet, "FindEmitterModifiedLODsCommandlet UnrealEd.Default__FindEmitterModifiedLODsCommandlet")()); }
}
