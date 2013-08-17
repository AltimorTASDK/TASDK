module UnrealScript.TribesGame.TrAccolade_CaptureAndHold;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_CaptureAndHold : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_CaptureAndHold")()); }
	private static __gshared TrAccolade_CaptureAndHold mDefaultProperties;
	@property final static TrAccolade_CaptureAndHold DefaultProperties() { mixin(MGDPC!(TrAccolade_CaptureAndHold, "TrAccolade_CaptureAndHold TribesGame.Default__TrAccolade_CaptureAndHold")()); }
}
