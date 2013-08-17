module UnrealScript.TribesGame.TrGameSettingsTrArena;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrArena : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSettingsTrArena")()); }
	private static __gshared TrGameSettingsTrArena mDefaultProperties;
	@property final static TrGameSettingsTrArena DefaultProperties() { mixin(MGDPC!(TrGameSettingsTrArena, "TrGameSettingsTrArena TribesGame.Default__TrGameSettingsTrArena")()); }
}
