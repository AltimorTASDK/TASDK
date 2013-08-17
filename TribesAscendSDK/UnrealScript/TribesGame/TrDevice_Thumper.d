module UnrealScript.TribesGame.TrDevice_Thumper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Thumper : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Thumper")()); }
	private static __gshared TrDevice_Thumper mDefaultProperties;
	@property final static TrDevice_Thumper DefaultProperties() { mixin(MGDPC!(TrDevice_Thumper, "TrDevice_Thumper TribesGame.Default__TrDevice_Thumper")()); }
}
