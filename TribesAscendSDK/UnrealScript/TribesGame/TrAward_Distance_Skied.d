module UnrealScript.TribesGame.TrAward_Distance_Skied;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Distance_Skied : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAward_Distance_Skied")()); }
	private static __gshared TrAward_Distance_Skied mDefaultProperties;
	@property final static TrAward_Distance_Skied DefaultProperties() { mixin(MGDPC!(TrAward_Distance_Skied, "TrAward_Distance_Skied TribesGame.Default__TrAward_Distance_Skied")()); }
}
