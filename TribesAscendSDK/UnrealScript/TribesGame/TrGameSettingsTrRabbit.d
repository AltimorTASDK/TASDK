module UnrealScript.TribesGame.TrGameSettingsTrRabbit;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrRabbit : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrRabbit")); }
	private static __gshared TrGameSettingsTrRabbit mDefaultProperties;
	@property final static TrGameSettingsTrRabbit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrRabbit)("TrGameSettingsTrRabbit TribesGame.Default__TrGameSettingsTrRabbit")); }
}
