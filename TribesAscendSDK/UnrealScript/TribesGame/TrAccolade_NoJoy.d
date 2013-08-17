module UnrealScript.TribesGame.TrAccolade_NoJoy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_NoJoy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_NoJoy")); }
	private static __gshared TrAccolade_NoJoy mDefaultProperties;
	@property final static TrAccolade_NoJoy DefaultProperties() { mixin(MGDPC("TrAccolade_NoJoy", "TrAccolade_NoJoy TribesGame.Default__TrAccolade_NoJoy")); }
}
