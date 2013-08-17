module UnrealScript.TribesGame.TrGameSettingsTrTDMConsole;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsTrTDM;

extern(C++) interface TrGameSettingsTrTDMConsole : TrGameSettingsTrTDM
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSettingsTrTDMConsole")); }
	private static __gshared TrGameSettingsTrTDMConsole mDefaultProperties;
	@property final static TrGameSettingsTrTDMConsole DefaultProperties() { mixin(MGDPC("TrGameSettingsTrTDMConsole", "TrGameSettingsTrTDMConsole TribesGame.Default__TrGameSettingsTrTDMConsole")); }
}
