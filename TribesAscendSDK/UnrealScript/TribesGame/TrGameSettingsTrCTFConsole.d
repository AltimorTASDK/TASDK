module UnrealScript.TribesGame.TrGameSettingsTrCTFConsole;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsTrCTF;

extern(C++) interface TrGameSettingsTrCTFConsole : TrGameSettingsTrCTF
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrCTFConsole")); }
	private static __gshared TrGameSettingsTrCTFConsole mDefaultProperties;
	@property final static TrGameSettingsTrCTFConsole DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrCTFConsole)("TrGameSettingsTrCTFConsole TribesGame.Default__TrGameSettingsTrCTFConsole")); }
}
