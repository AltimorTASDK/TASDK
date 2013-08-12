module UnrealScript.TribesGame.TrAccolade_FlagGrabCTF;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade_FlagGrab;

extern(C++) interface TrAccolade_FlagGrabCTF : TrAccolade_FlagGrab
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FlagGrabCTF")); }
}
