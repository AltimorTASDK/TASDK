module UnrealScript.TribesGame.TrAccolade_RabbitHunter;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_RabbitHunter : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_RabbitHunter")); }
	private static __gshared TrAccolade_RabbitHunter mDefaultProperties;
	@property final static TrAccolade_RabbitHunter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_RabbitHunter)("TrAccolade_RabbitHunter TribesGame.Default__TrAccolade_RabbitHunter")); }
}
