module UnrealScript.TribesGame.TrAccolade_Assist_Vehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Assist_Vehicle : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_Assist_Vehicle")()); }
	private static __gshared TrAccolade_Assist_Vehicle mDefaultProperties;
	@property final static TrAccolade_Assist_Vehicle DefaultProperties() { mixin(MGDPC!(TrAccolade_Assist_Vehicle, "TrAccolade_Assist_Vehicle TribesGame.Default__TrAccolade_Assist_Vehicle")()); }
}
