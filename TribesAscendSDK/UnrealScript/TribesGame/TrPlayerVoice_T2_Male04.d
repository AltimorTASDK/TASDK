module UnrealScript.TribesGame.TrPlayerVoice_T2_Male04;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_T2_Male04 : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerVoice_T2_Male04")); }
	private static __gshared TrPlayerVoice_T2_Male04 mDefaultProperties;
	@property final static TrPlayerVoice_T2_Male04 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerVoice_T2_Male04)("TrPlayerVoice_T2_Male04 TribesGame.Default__TrPlayerVoice_T2_Male04")); }
}
