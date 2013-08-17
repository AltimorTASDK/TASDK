module UnrealScript.TribesGame.TrGameSettingsTrDaD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrDaD : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrDaD")); }
	private static __gshared TrGameSettingsTrDaD mDefaultProperties;
	@property final static TrGameSettingsTrDaD DefaultProperties() { mixin(MGDPC("TrGameSettingsTrDaD", "TrGameSettingsTrDaD TribesGame.Default__TrGameSettingsTrDaD")); }
}
