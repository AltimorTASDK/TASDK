module UnrealScript.TribesGame.TrAccolade_FlagGrabDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade_FlagGrab;

extern(C++) interface TrAccolade_FlagGrabDM : TrAccolade_FlagGrab
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FlagGrabDM")()); }
	private static __gshared TrAccolade_FlagGrabDM mDefaultProperties;
	@property final static TrAccolade_FlagGrabDM DefaultProperties() { mixin(MGDPC!(TrAccolade_FlagGrabDM, "TrAccolade_FlagGrabDM TribesGame.Default__TrAccolade_FlagGrabDM")()); }
}
