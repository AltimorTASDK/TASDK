module UnrealScript.TribesGame.TrAward_Repairs;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Repairs : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAward_Repairs")()); }
	private static __gshared TrAward_Repairs mDefaultProperties;
	@property final static TrAward_Repairs DefaultProperties() { mixin(MGDPC!(TrAward_Repairs, "TrAward_Repairs TribesGame.Default__TrAward_Repairs")()); }
}
