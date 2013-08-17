module UnrealScript.TribesGame.TrAccolade_HoldTheLine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_HoldTheLine : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_HoldTheLine")); }
	private static __gshared TrAccolade_HoldTheLine mDefaultProperties;
	@property final static TrAccolade_HoldTheLine DefaultProperties() { mixin(MGDPC("TrAccolade_HoldTheLine", "TrAccolade_HoldTheLine TribesGame.Default__TrAccolade_HoldTheLine")); }
}
