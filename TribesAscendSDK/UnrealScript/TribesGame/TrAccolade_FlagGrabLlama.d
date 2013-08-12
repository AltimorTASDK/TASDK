module UnrealScript.TribesGame.TrAccolade_FlagGrabLlama;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade_FlagGrab;

extern(C++) interface TrAccolade_FlagGrabLlama : TrAccolade_FlagGrab
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FlagGrabLlama")); }
	private static __gshared TrAccolade_FlagGrabLlama mDefaultProperties;
	@property final static TrAccolade_FlagGrabLlama DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_FlagGrabLlama)("TrAccolade_FlagGrabLlama TribesGame.Default__TrAccolade_FlagGrabLlama")); }
}
