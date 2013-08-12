module UnrealScript.TribesGame.TrPlayerVoice_T2_Fem02;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_T2_Fem02 : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerVoice_T2_Fem02")); }
	private static __gshared TrPlayerVoice_T2_Fem02 mDefaultProperties;
	@property final static TrPlayerVoice_T2_Fem02 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerVoice_T2_Fem02)("TrPlayerVoice_T2_Fem02 TribesGame.Default__TrPlayerVoice_T2_Fem02")); }
}
