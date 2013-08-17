module UnrealScript.TribesGame.TrAccolade_GameWinner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_GameWinner : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_GameWinner")); }
	private static __gshared TrAccolade_GameWinner mDefaultProperties;
	@property final static TrAccolade_GameWinner DefaultProperties() { mixin(MGDPC("TrAccolade_GameWinner", "TrAccolade_GameWinner TribesGame.Default__TrAccolade_GameWinner")); }
}
