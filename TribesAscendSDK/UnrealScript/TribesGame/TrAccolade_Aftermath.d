module UnrealScript.TribesGame.TrAccolade_Aftermath;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Aftermath : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_Aftermath")); }
	private static __gshared TrAccolade_Aftermath mDefaultProperties;
	@property final static TrAccolade_Aftermath DefaultProperties() { mixin(MGDPC("TrAccolade_Aftermath", "TrAccolade_Aftermath TribesGame.Default__TrAccolade_Aftermath")); }
}
