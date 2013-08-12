module UnrealScript.TribesGame.TrAccolade_BaseAssist;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BaseAssist : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_BaseAssist")); }
	private static __gshared TrAccolade_BaseAssist mDefaultProperties;
	@property final static TrAccolade_BaseAssist DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_BaseAssist)("TrAccolade_BaseAssist TribesGame.Default__TrAccolade_BaseAssist")); }
}
