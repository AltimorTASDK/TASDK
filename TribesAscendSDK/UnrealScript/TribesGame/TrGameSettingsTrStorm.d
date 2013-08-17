module UnrealScript.TribesGame.TrGameSettingsTrStorm;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrStorm : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrStorm")); }
	private static __gshared TrGameSettingsTrStorm mDefaultProperties;
	@property final static TrGameSettingsTrStorm DefaultProperties() { mixin(MGDPC("TrGameSettingsTrStorm", "TrGameSettingsTrStorm TribesGame.Default__TrGameSettingsTrStorm")); }
}
