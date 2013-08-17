module UnrealScript.TribesGame.TrCamera_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCamera_SpectatorBookmark;

extern(C++) interface TrCamera_DiamondSword : TrCamera_SpectatorBookmark
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCamera_DiamondSword")()); }
	private static __gshared TrCamera_DiamondSword mDefaultProperties;
	@property final static TrCamera_DiamondSword DefaultProperties() { mixin(MGDPC!(TrCamera_DiamondSword, "TrCamera_DiamondSword TribesGame.Default__TrCamera_DiamondSword")()); }
}
