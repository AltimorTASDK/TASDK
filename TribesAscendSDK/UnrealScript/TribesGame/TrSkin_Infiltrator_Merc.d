module UnrealScript.TribesGame.TrSkin_Infiltrator_Merc;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Infiltrator_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkin_Infiltrator_Merc")()); }
	private static __gshared TrSkin_Infiltrator_Merc mDefaultProperties;
	@property final static TrSkin_Infiltrator_Merc DefaultProperties() { mixin(MGDPC!(TrSkin_Infiltrator_Merc, "TrSkin_Infiltrator_Merc TribesGame.Default__TrSkin_Infiltrator_Merc")()); }
}
