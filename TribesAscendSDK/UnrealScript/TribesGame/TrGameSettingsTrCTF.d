module UnrealScript.TribesGame.TrGameSettingsTrCTF;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrCTF : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrCTF")); }
	private static __gshared TrGameSettingsTrCTF mDefaultProperties;
	@property final static TrGameSettingsTrCTF DefaultProperties() { mixin(MGDPC("TrGameSettingsTrCTF", "TrGameSettingsTrCTF TribesGame.Default__TrGameSettingsTrCTF")); }
}
