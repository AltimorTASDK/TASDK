module UnrealScript.TribesGame.TrPlayerVoice_Fem1;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Fem1 : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPlayerVoice_Fem1")); }
	private static __gshared TrPlayerVoice_Fem1 mDefaultProperties;
	@property final static TrPlayerVoice_Fem1 DefaultProperties() { mixin(MGDPC("TrPlayerVoice_Fem1", "TrPlayerVoice_Fem1 TribesGame.Default__TrPlayerVoice_Fem1")); }
}
