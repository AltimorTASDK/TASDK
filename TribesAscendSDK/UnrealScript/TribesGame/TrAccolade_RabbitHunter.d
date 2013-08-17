module UnrealScript.TribesGame.TrAccolade_RabbitHunter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_RabbitHunter : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_RabbitHunter")); }
	private static __gshared TrAccolade_RabbitHunter mDefaultProperties;
	@property final static TrAccolade_RabbitHunter DefaultProperties() { mixin(MGDPC("TrAccolade_RabbitHunter", "TrAccolade_RabbitHunter TribesGame.Default__TrAccolade_RabbitHunter")); }
}
