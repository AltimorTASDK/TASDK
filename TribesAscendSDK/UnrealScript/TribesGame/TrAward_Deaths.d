module UnrealScript.TribesGame.TrAward_Deaths;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Deaths : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAward_Deaths")()); }
	private static __gshared TrAward_Deaths mDefaultProperties;
	@property final static TrAward_Deaths DefaultProperties() { mixin(MGDPC!(TrAward_Deaths, "TrAward_Deaths TribesGame.Default__TrAward_Deaths")()); }
}
