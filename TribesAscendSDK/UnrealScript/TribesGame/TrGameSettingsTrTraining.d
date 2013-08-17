module UnrealScript.TribesGame.TrGameSettingsTrTraining;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrTraining : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrTraining")); }
	private static __gshared TrGameSettingsTrTraining mDefaultProperties;
	@property final static TrGameSettingsTrTraining DefaultProperties() { mixin(MGDPC("TrGameSettingsTrTraining", "TrGameSettingsTrTraining TribesGame.Default__TrGameSettingsTrTraining")); }
}
