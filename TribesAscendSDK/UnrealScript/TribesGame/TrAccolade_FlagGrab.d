module UnrealScript.TribesGame.TrAccolade_FlagGrab;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagGrab : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FlagGrab")); }
	private static __gshared TrAccolade_FlagGrab mDefaultProperties;
	@property final static TrAccolade_FlagGrab DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_FlagGrab)("TrAccolade_FlagGrab TribesGame.Default__TrAccolade_FlagGrab")); }
}
