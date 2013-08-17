module UnrealScript.TribesGame.TrAccolade_Sticky;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Sticky : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_Sticky")); }
	private static __gshared TrAccolade_Sticky mDefaultProperties;
	@property final static TrAccolade_Sticky DefaultProperties() { mixin(MGDPC("TrAccolade_Sticky", "TrAccolade_Sticky TribesGame.Default__TrAccolade_Sticky")); }
}
