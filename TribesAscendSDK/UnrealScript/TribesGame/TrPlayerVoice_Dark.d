module UnrealScript.TribesGame.TrPlayerVoice_Dark;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Dark : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerVoice_Dark")); }
	private static __gshared TrPlayerVoice_Dark mDefaultProperties;
	@property final static TrPlayerVoice_Dark DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerVoice_Dark)("TrPlayerVoice_Dark TribesGame.Default__TrPlayerVoice_Dark")); }
}
