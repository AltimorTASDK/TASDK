module UnrealScript.TribesGame.TrGameSettingsTrCaH;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrCaH : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrCaH")); }
	private static __gshared TrGameSettingsTrCaH mDefaultProperties;
	@property final static TrGameSettingsTrCaH DefaultProperties() { mixin(MGDPC("TrGameSettingsTrCaH", "TrGameSettingsTrCaH TribesGame.Default__TrGameSettingsTrCaH")); }
}
