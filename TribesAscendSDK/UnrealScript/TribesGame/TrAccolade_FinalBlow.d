module UnrealScript.TribesGame.TrAccolade_FinalBlow;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FinalBlow : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_FinalBlow")); }
	private static __gshared TrAccolade_FinalBlow mDefaultProperties;
	@property final static TrAccolade_FinalBlow DefaultProperties() { mixin(MGDPC("TrAccolade_FinalBlow", "TrAccolade_FinalBlow TribesGame.Default__TrAccolade_FinalBlow")); }
}
