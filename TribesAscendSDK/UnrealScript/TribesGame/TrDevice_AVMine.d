module UnrealScript.TribesGame.TrDevice_AVMine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_AVMine : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_AVMine")()); }
	private static __gshared TrDevice_AVMine mDefaultProperties;
	@property final static TrDevice_AVMine DefaultProperties() { mixin(MGDPC!(TrDevice_AVMine, "TrDevice_AVMine TribesGame.Default__TrDevice_AVMine")()); }
}
