module UnrealScript.TribesGame.TrPlayerVoice_Medium;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Medium : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerVoice_Medium")()); }
	private static __gshared TrPlayerVoice_Medium mDefaultProperties;
	@property final static TrPlayerVoice_Medium DefaultProperties() { mixin(MGDPC!(TrPlayerVoice_Medium, "TrPlayerVoice_Medium TribesGame.Default__TrPlayerVoice_Medium")()); }
}
