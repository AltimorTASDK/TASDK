module UnrealScript.TribesGame.TrGameSettingsTrRabbit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrRabbit : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrRabbit")); }
	private static __gshared TrGameSettingsTrRabbit mDefaultProperties;
	@property final static TrGameSettingsTrRabbit DefaultProperties() { mixin(MGDPC("TrGameSettingsTrRabbit", "TrGameSettingsTrRabbit TribesGame.Default__TrGameSettingsTrRabbit")); }
}
