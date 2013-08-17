module UnrealScript.UnrealEd.PhATSimOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PhATSimOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PhATSimOptions")()); }
	private static __gshared PhATSimOptions mDefaultProperties;
	@property final static PhATSimOptions DefaultProperties() { mixin(MGDPC!(PhATSimOptions, "PhATSimOptions UnrealEd.Default__PhATSimOptions")()); }
}
