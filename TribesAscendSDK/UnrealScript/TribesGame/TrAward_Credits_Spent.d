module UnrealScript.TribesGame.TrAward_Credits_Spent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Credits_Spent : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAward_Credits_Spent")()); }
	private static __gshared TrAward_Credits_Spent mDefaultProperties;
	@property final static TrAward_Credits_Spent DefaultProperties() { mixin(MGDPC!(TrAward_Credits_Spent, "TrAward_Credits_Spent TribesGame.Default__TrAward_Credits_Spent")()); }
}
