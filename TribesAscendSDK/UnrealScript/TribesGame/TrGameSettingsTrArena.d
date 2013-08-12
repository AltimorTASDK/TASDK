module UnrealScript.TribesGame.TrGameSettingsTrArena;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrArena : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrArena")); }
}
