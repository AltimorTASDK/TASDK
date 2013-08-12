module UnrealScript.TribesGame.TrPlayerVoice_Aus;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Aus : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerVoice_Aus")); }
	private static __gshared TrPlayerVoice_Aus mDefaultProperties;
	@property final static TrPlayerVoice_Aus DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerVoice_Aus)("TrPlayerVoice_Aus TribesGame.Default__TrPlayerVoice_Aus")); }
}
