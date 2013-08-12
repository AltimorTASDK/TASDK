module UnrealScript.TribesGame.TrPlayerVoice_Fem2;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Fem2 : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerVoice_Fem2")); }
}
