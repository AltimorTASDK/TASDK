module UnrealScript.TribesGame.TrAccolade_DoubleDown;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_DoubleDown : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_DoubleDown")()); }
	private static __gshared TrAccolade_DoubleDown mDefaultProperties;
	@property final static TrAccolade_DoubleDown DefaultProperties() { mixin(MGDPC!(TrAccolade_DoubleDown, "TrAccolade_DoubleDown TribesGame.Default__TrAccolade_DoubleDown")()); }
}
