module UnrealScript.TribesGame.TrGameSettingsTrTDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrTDM : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSettingsTrTDM")()); }
	private static __gshared TrGameSettingsTrTDM mDefaultProperties;
	@property final static TrGameSettingsTrTDM DefaultProperties() { mixin(MGDPC!(TrGameSettingsTrTDM, "TrGameSettingsTrTDM TribesGame.Default__TrGameSettingsTrTDM")()); }
}
