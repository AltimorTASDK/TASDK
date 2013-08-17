module UnrealScript.TribesGame.TrSkin_Infiltrator_Assassin;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Infiltrator_Assassin : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkin_Infiltrator_Assassin")()); }
	private static __gshared TrSkin_Infiltrator_Assassin mDefaultProperties;
	@property final static TrSkin_Infiltrator_Assassin DefaultProperties() { mixin(MGDPC!(TrSkin_Infiltrator_Assassin, "TrSkin_Infiltrator_Assassin TribesGame.Default__TrSkin_Infiltrator_Assassin")()); }
}
