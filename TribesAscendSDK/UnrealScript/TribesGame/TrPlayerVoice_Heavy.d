module UnrealScript.TribesGame.TrPlayerVoice_Heavy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Heavy : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerVoice_Heavy")()); }
	private static __gshared TrPlayerVoice_Heavy mDefaultProperties;
	@property final static TrPlayerVoice_Heavy DefaultProperties() { mixin(MGDPC!(TrPlayerVoice_Heavy, "TrPlayerVoice_Heavy TribesGame.Default__TrPlayerVoice_Heavy")()); }
}
