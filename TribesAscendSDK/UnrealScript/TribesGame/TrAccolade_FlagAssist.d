module UnrealScript.TribesGame.TrAccolade_FlagAssist;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagAssist : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FlagAssist")); }
	private static __gshared TrAccolade_FlagAssist mDefaultProperties;
	@property final static TrAccolade_FlagAssist DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_FlagAssist)("TrAccolade_FlagAssist TribesGame.Default__TrAccolade_FlagAssist")); }
}
