module UnrealScript.TribesGame.TrGameSettingsTrTeamRabbit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrTeamRabbit : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSettingsTrTeamRabbit")()); }
	private static __gshared TrGameSettingsTrTeamRabbit mDefaultProperties;
	@property final static TrGameSettingsTrTeamRabbit DefaultProperties() { mixin(MGDPC!(TrGameSettingsTrTeamRabbit, "TrGameSettingsTrTeamRabbit TribesGame.Default__TrGameSettingsTrTeamRabbit")()); }
}
