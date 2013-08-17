module UnrealScript.UnrealEd.BrowserManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface BrowserManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.BrowserManager")()); }
	private static __gshared BrowserManager mDefaultProperties;
	@property final static BrowserManager DefaultProperties() { mixin(MGDPC!(BrowserManager, "BrowserManager UnrealEd.Default__BrowserManager")()); }
}
