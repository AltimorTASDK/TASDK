module UnrealScript.TribesGame.TrPlayerVoice_Light;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Light : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerVoice_Light")()); }
	private static __gshared TrPlayerVoice_Light mDefaultProperties;
	@property final static TrPlayerVoice_Light DefaultProperties() { mixin(MGDPC!(TrPlayerVoice_Light, "TrPlayerVoice_Light TribesGame.Default__TrPlayerVoice_Light")()); }
}
