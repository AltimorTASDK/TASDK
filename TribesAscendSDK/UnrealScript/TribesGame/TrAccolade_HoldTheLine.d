module UnrealScript.TribesGame.TrAccolade_HoldTheLine;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_HoldTheLine : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_HoldTheLine")); }
	private static __gshared TrAccolade_HoldTheLine mDefaultProperties;
	@property final static TrAccolade_HoldTheLine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_HoldTheLine)("TrAccolade_HoldTheLine TribesGame.Default__TrAccolade_HoldTheLine")); }
}
