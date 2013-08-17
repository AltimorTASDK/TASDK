module UnrealScript.TribesGame.TrDevice_WhiteOut;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_WhiteOut : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_WhiteOut")()); }
	private static __gshared TrDevice_WhiteOut mDefaultProperties;
	@property final static TrDevice_WhiteOut DefaultProperties() { mixin(MGDPC!(TrDevice_WhiteOut, "TrDevice_WhiteOut TribesGame.Default__TrDevice_WhiteOut")()); }
}
