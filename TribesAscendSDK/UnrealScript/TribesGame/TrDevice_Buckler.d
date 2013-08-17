module UnrealScript.TribesGame.TrDevice_Buckler;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_Buckler : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Buckler")()); }
	private static __gshared TrDevice_Buckler mDefaultProperties;
	@property final static TrDevice_Buckler DefaultProperties() { mixin(MGDPC!(TrDevice_Buckler, "TrDevice_Buckler TribesGame.Default__TrDevice_Buckler")()); }
}
