module UnrealScript.TribesGame.TrSkin_Infiltrator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Infiltrator : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkin_Infiltrator")()); }
	private static __gshared TrSkin_Infiltrator mDefaultProperties;
	@property final static TrSkin_Infiltrator DefaultProperties() { mixin(MGDPC!(TrSkin_Infiltrator, "TrSkin_Infiltrator TribesGame.Default__TrSkin_Infiltrator")()); }
}
