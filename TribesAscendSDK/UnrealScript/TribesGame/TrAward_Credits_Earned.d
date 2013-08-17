module UnrealScript.TribesGame.TrAward_Credits_Earned;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Credits_Earned : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAward_Credits_Earned")()); }
	private static __gshared TrAward_Credits_Earned mDefaultProperties;
	@property final static TrAward_Credits_Earned DefaultProperties() { mixin(MGDPC!(TrAward_Credits_Earned, "TrAward_Credits_Earned TribesGame.Default__TrAward_Credits_Earned")()); }
}
