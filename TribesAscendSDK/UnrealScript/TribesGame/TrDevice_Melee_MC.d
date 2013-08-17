module UnrealScript.TribesGame.TrDevice_Melee_MC;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Melee;

extern(C++) interface TrDevice_Melee_MC : TrDevice_Melee
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_Melee_MC")); }
	private static __gshared TrDevice_Melee_MC mDefaultProperties;
	@property final static TrDevice_Melee_MC DefaultProperties() { mixin(MGDPC("TrDevice_Melee_MC", "TrDevice_Melee_MC TribesGame.Default__TrDevice_Melee_MC")); }
	@property final auto ref ScriptString ContentDeviceClassString() { mixin(MGPC("ScriptString", 2192)); }
}
