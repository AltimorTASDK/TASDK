module UnrealScript.TribesGame.TrAccolade_LastManStanding;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_LastManStanding : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_LastManStanding")()); }
	private static __gshared TrAccolade_LastManStanding mDefaultProperties;
	@property final static TrAccolade_LastManStanding DefaultProperties() { mixin(MGDPC!(TrAccolade_LastManStanding, "TrAccolade_LastManStanding TribesGame.Default__TrAccolade_LastManStanding")()); }
}
