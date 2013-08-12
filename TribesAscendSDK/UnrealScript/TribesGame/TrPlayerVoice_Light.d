module UnrealScript.TribesGame.TrPlayerVoice_Light;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Light : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerVoice_Light")); }
	private static __gshared TrPlayerVoice_Light mDefaultProperties;
	@property final static TrPlayerVoice_Light DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerVoice_Light)("TrPlayerVoice_Light TribesGame.Default__TrPlayerVoice_Light")); }
}
