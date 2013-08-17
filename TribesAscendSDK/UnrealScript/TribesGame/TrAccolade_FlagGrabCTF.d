module UnrealScript.TribesGame.TrAccolade_FlagGrabCTF;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade_FlagGrab;

extern(C++) interface TrAccolade_FlagGrabCTF : TrAccolade_FlagGrab
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_FlagGrabCTF")); }
	private static __gshared TrAccolade_FlagGrabCTF mDefaultProperties;
	@property final static TrAccolade_FlagGrabCTF DefaultProperties() { mixin(MGDPC("TrAccolade_FlagGrabCTF", "TrAccolade_FlagGrabCTF TribesGame.Default__TrAccolade_FlagGrabCTF")); }
}
