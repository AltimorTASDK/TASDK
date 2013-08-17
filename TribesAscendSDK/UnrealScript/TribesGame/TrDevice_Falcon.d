module UnrealScript.TribesGame.TrDevice_Falcon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_Falcon : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Falcon")()); }
	private static __gshared TrDevice_Falcon mDefaultProperties;
	@property final static TrDevice_Falcon DefaultProperties() { mixin(MGDPC!(TrDevice_Falcon, "TrDevice_Falcon TribesGame.Default__TrDevice_Falcon")()); }
}
