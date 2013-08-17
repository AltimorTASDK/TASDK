module UnrealScript.TribesGame.TrPlayerVoice_Fem2;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_Fem2 : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerVoice_Fem2")()); }
	private static __gshared TrPlayerVoice_Fem2 mDefaultProperties;
	@property final static TrPlayerVoice_Fem2 DefaultProperties() { mixin(MGDPC!(TrPlayerVoice_Fem2, "TrPlayerVoice_Fem2 TribesGame.Default__TrPlayerVoice_Fem2")()); }
}
