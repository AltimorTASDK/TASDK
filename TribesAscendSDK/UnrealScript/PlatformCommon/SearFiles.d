module UnrealScript.PlatformCommon.SearFiles;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface SearFiles : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.SearFiles")); }
	private static __gshared SearFiles mDefaultProperties;
	@property final static SearFiles DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SearFiles)("SearFiles PlatformCommon.Default__SearFiles")); }
}
