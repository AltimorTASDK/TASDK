module UnrealScript.TribesGame.TrGameSettingsTrCaH;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrCaH : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrCaH")); }
	private static __gshared TrGameSettingsTrCaH mDefaultProperties;
	@property final static TrGameSettingsTrCaH DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrCaH)("TrGameSettingsTrCaH TribesGame.Default__TrGameSettingsTrCaH")); }
}
