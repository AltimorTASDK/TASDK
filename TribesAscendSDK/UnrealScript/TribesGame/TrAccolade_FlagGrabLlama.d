module UnrealScript.TribesGame.TrAccolade_FlagGrabLlama;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade_FlagGrab;

extern(C++) interface TrAccolade_FlagGrabLlama : TrAccolade_FlagGrab
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FlagGrabLlama")()); }
	private static __gshared TrAccolade_FlagGrabLlama mDefaultProperties;
	@property final static TrAccolade_FlagGrabLlama DefaultProperties() { mixin(MGDPC!(TrAccolade_FlagGrabLlama, "TrAccolade_FlagGrabLlama TribesGame.Default__TrAccolade_FlagGrabLlama")()); }
}
