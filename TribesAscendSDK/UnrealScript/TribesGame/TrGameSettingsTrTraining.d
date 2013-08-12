module UnrealScript.TribesGame.TrGameSettingsTrTraining;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrTraining : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrTraining")); }
	private static __gshared TrGameSettingsTrTraining mDefaultProperties;
	@property final static TrGameSettingsTrTraining DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrTraining)("TrGameSettingsTrTraining TribesGame.Default__TrGameSettingsTrTraining")); }
}
