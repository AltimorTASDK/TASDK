module UnrealScript.TribesGame.TrCallIn_SupportInventory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCallIn_Support;

extern(C++) interface TrCallIn_SupportInventory : TrCallIn_Support
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrCallIn_SupportInventory")); }
	private static __gshared TrCallIn_SupportInventory mDefaultProperties;
	@property final static TrCallIn_SupportInventory DefaultProperties() { mixin(MGDPC("TrCallIn_SupportInventory", "TrCallIn_SupportInventory TribesGame.Default__TrCallIn_SupportInventory")); }
}
