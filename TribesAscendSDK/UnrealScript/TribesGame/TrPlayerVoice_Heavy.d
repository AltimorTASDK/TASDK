module UnrealScript.TribesGame.TrPlayerVoice_Heavy;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Heavy : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerVoice_Heavy")); }
	private static __gshared TrPlayerVoice_Heavy mDefaultProperties;
	@property final static TrPlayerVoice_Heavy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerVoice_Heavy)("TrPlayerVoice_Heavy TribesGame.Default__TrPlayerVoice_Heavy")); }
}
