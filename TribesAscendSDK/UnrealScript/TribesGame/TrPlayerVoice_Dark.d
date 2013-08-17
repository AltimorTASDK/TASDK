module UnrealScript.TribesGame.TrPlayerVoice_Dark;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Dark : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerVoice_Dark")()); }
	private static __gshared TrPlayerVoice_Dark mDefaultProperties;
	@property final static TrPlayerVoice_Dark DefaultProperties() { mixin(MGDPC!(TrPlayerVoice_Dark, "TrPlayerVoice_Dark TribesGame.Default__TrPlayerVoice_Dark")()); }
}
