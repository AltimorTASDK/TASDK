module UnrealScript.TribesGame.TrPlayerVoice_Aus;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Aus : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPlayerVoice_Aus")); }
	private static __gshared TrPlayerVoice_Aus mDefaultProperties;
	@property final static TrPlayerVoice_Aus DefaultProperties() { mixin(MGDPC("TrPlayerVoice_Aus", "TrPlayerVoice_Aus TribesGame.Default__TrPlayerVoice_Aus")); }
}
