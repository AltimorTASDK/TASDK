module UnrealScript.UnrealEd.GeomModifier;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GeomModifier : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GeomModifier")()); }
	private static __gshared GeomModifier mDefaultProperties;
	@property final static GeomModifier DefaultProperties() { mixin(MGDPC!(GeomModifier, "GeomModifier UnrealEd.Default__GeomModifier")()); }
}
