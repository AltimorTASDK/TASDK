module UnrealScript.TribesGame.TrGameSettingsTrCTFConsole;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsTrCTF;

extern(C++) interface TrGameSettingsTrCTFConsole : TrGameSettingsTrCTF
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSettingsTrCTFConsole")()); }
	private static __gshared TrGameSettingsTrCTFConsole mDefaultProperties;
	@property final static TrGameSettingsTrCTFConsole DefaultProperties() { mixin(MGDPC!(TrGameSettingsTrCTFConsole, "TrGameSettingsTrCTFConsole TribesGame.Default__TrGameSettingsTrCTFConsole")()); }
}
