module UnrealScript.TribesGame.TrGameSettingsTrCTF;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrCTF : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrCTF")); }
	private static __gshared TrGameSettingsTrCTF mDefaultProperties;
	@property final static TrGameSettingsTrCTF DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrCTF)("TrGameSettingsTrCTF TribesGame.Default__TrGameSettingsTrCTF")); }
}
