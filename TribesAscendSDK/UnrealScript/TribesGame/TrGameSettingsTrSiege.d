module UnrealScript.TribesGame.TrGameSettingsTrSiege;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrSiege : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrSiege")); }
	private static __gshared TrGameSettingsTrSiege mDefaultProperties;
	@property final static TrGameSettingsTrSiege DefaultProperties() { mixin(MGDPC("TrGameSettingsTrSiege", "TrGameSettingsTrSiege TribesGame.Default__TrGameSettingsTrSiege")); }
}
