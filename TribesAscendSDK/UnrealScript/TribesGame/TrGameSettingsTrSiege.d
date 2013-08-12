module UnrealScript.TribesGame.TrGameSettingsTrSiege;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrSiege : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrSiege")); }
}
