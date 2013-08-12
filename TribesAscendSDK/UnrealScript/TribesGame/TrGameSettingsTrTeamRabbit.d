module UnrealScript.TribesGame.TrGameSettingsTrTeamRabbit;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrTeamRabbit : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrTeamRabbit")); }
	private static __gshared TrGameSettingsTrTeamRabbit mDefaultProperties;
	@property final static TrGameSettingsTrTeamRabbit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrTeamRabbit)("TrGameSettingsTrTeamRabbit TribesGame.Default__TrGameSettingsTrTeamRabbit")); }
}
