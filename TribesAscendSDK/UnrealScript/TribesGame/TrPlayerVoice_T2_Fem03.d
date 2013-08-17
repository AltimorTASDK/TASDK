module UnrealScript.TribesGame.TrPlayerVoice_T2_Fem03;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_T2_Fem03 : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerVoice_T2_Fem03")()); }
	private static __gshared TrPlayerVoice_T2_Fem03 mDefaultProperties;
	@property final static TrPlayerVoice_T2_Fem03 DefaultProperties() { mixin(MGDPC!(TrPlayerVoice_T2_Fem03, "TrPlayerVoice_T2_Fem03 TribesGame.Default__TrPlayerVoice_T2_Fem03")()); }
}
