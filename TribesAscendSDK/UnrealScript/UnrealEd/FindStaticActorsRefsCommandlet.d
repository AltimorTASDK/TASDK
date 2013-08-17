module UnrealScript.UnrealEd.FindStaticActorsRefsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.PerformMapCheckCommandlet;

extern(C++) interface FindStaticActorsRefsCommandlet : PerformMapCheckCommandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindStaticActorsRefsCommandlet")()); }
	private static __gshared FindStaticActorsRefsCommandlet mDefaultProperties;
	@property final static FindStaticActorsRefsCommandlet DefaultProperties() { mixin(MGDPC!(FindStaticActorsRefsCommandlet, "FindStaticActorsRefsCommandlet UnrealEd.Default__FindStaticActorsRefsCommandlet")()); }
}
