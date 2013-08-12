module UnrealScript.TribesGame.TrGameSettingsTrDaD;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrDaD : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrDaD")); }
	private static __gshared TrGameSettingsTrDaD mDefaultProperties;
	@property final static TrGameSettingsTrDaD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrDaD)("TrGameSettingsTrDaD TribesGame.Default__TrGameSettingsTrDaD")); }
}
