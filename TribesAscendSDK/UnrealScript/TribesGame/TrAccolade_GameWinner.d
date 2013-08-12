module UnrealScript.TribesGame.TrAccolade_GameWinner;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_GameWinner : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_GameWinner")); }
	private static __gshared TrAccolade_GameWinner mDefaultProperties;
	@property final static TrAccolade_GameWinner DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_GameWinner)("TrAccolade_GameWinner TribesGame.Default__TrAccolade_GameWinner")); }
}
