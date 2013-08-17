module UnrealScript.TribesGame.TrPlayerVoice_T2_BioDerm01;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_T2_BioDerm01 : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPlayerVoice_T2_BioDerm01")); }
	private static __gshared TrPlayerVoice_T2_BioDerm01 mDefaultProperties;
	@property final static TrPlayerVoice_T2_BioDerm01 DefaultProperties() { mixin(MGDPC("TrPlayerVoice_T2_BioDerm01", "TrPlayerVoice_T2_BioDerm01 TribesGame.Default__TrPlayerVoice_T2_BioDerm01")); }
}
