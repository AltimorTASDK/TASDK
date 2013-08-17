module UnrealScript.TribesGame.TrAccolade_NotAmongEquals;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_NotAmongEquals : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_NotAmongEquals")); }
	private static __gshared TrAccolade_NotAmongEquals mDefaultProperties;
	@property final static TrAccolade_NotAmongEquals DefaultProperties() { mixin(MGDPC("TrAccolade_NotAmongEquals", "TrAccolade_NotAmongEquals TribesGame.Default__TrAccolade_NotAmongEquals")); }
}
