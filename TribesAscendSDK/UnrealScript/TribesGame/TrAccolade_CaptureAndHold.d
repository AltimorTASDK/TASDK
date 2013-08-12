module UnrealScript.TribesGame.TrAccolade_CaptureAndHold;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_CaptureAndHold : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_CaptureAndHold")); }
	private static __gshared TrAccolade_CaptureAndHold mDefaultProperties;
	@property final static TrAccolade_CaptureAndHold DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_CaptureAndHold)("TrAccolade_CaptureAndHold TribesGame.Default__TrAccolade_CaptureAndHold")); }
}
