module UnrealScript.TribesGame.TrAccolade_FlagGrabE;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagGrabE : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FlagGrabE")); }
	private static __gshared TrAccolade_FlagGrabE mDefaultProperties;
	@property final static TrAccolade_FlagGrabE DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_FlagGrabE)("TrAccolade_FlagGrabE TribesGame.Default__TrAccolade_FlagGrabE")); }
}
