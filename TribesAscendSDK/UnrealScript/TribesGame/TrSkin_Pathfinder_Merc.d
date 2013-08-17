module UnrealScript.TribesGame.TrSkin_Pathfinder_Merc;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Pathfinder_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkin_Pathfinder_Merc")()); }
	private static __gshared TrSkin_Pathfinder_Merc mDefaultProperties;
	@property final static TrSkin_Pathfinder_Merc DefaultProperties() { mixin(MGDPC!(TrSkin_Pathfinder_Merc, "TrSkin_Pathfinder_Merc TribesGame.Default__TrSkin_Pathfinder_Merc")()); }
}
