module UnrealScript.TribesGame.TrGameEngine;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgGameEngine;

extern(C++) interface TrGameEngine : TgGameEngine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameEngine")); }
	private static __gshared TrGameEngine mDefaultProperties;
	@property final static TrGameEngine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameEngine)("TrGameEngine TribesGame.Default__TrGameEngine")); }
	@property final auto ref float fBGMVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 1840); }
}
