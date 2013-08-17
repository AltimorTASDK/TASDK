module UnrealScript.TribesGame.TrGameSettingsTrCTFBlitz;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrCTFBlitz : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrCTFBlitz")); }
	private static __gshared TrGameSettingsTrCTFBlitz mDefaultProperties;
	@property final static TrGameSettingsTrCTFBlitz DefaultProperties() { mixin(MGDPC("TrGameSettingsTrCTFBlitz", "TrGameSettingsTrCTFBlitz TribesGame.Default__TrGameSettingsTrCTFBlitz")); }
}
