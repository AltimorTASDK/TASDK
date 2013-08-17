module UnrealScript.TribesGame.TrSkin_Raider_Merc;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Raider_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkin_Raider_Merc")()); }
	private static __gshared TrSkin_Raider_Merc mDefaultProperties;
	@property final static TrSkin_Raider_Merc DefaultProperties() { mixin(MGDPC!(TrSkin_Raider_Merc, "TrSkin_Raider_Merc TribesGame.Default__TrSkin_Raider_Merc")()); }
}
