module UnrealScript.TribesGame.TrDevice_LR1Mortar;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_LR1Mortar : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_LR1Mortar")); }
	private static __gshared TrDevice_LR1Mortar mDefaultProperties;
	@property final static TrDevice_LR1Mortar DefaultProperties() { mixin(MGDPC("TrDevice_LR1Mortar", "TrDevice_LR1Mortar TribesGame.Default__TrDevice_LR1Mortar")); }
}
