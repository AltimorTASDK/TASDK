module UnrealScript.TribesGame.TrGameSettingsTrCTFBlitz;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrCTFBlitz : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrCTFBlitz")); }
	private static __gshared TrGameSettingsTrCTFBlitz mDefaultProperties;
	@property final static TrGameSettingsTrCTFBlitz DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrCTFBlitz)("TrGameSettingsTrCTFBlitz TribesGame.Default__TrGameSettingsTrCTFBlitz")); }
}
