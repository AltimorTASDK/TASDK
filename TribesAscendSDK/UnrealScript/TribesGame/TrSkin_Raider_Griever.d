module UnrealScript.TribesGame.TrSkin_Raider_Griever;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Raider_Griever : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkin_Raider_Griever")()); }
	private static __gshared TrSkin_Raider_Griever mDefaultProperties;
	@property final static TrSkin_Raider_Griever DefaultProperties() { mixin(MGDPC!(TrSkin_Raider_Griever, "TrSkin_Raider_Griever TribesGame.Default__TrSkin_Raider_Griever")()); }
}
