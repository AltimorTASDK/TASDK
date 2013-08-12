module UnrealScript.UnrealEd.ListLoopingEmittersCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListLoopingEmittersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ListLoopingEmittersCommandlet")); }
	private static __gshared ListLoopingEmittersCommandlet mDefaultProperties;
	@property final static ListLoopingEmittersCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ListLoopingEmittersCommandlet)("ListLoopingEmittersCommandlet UnrealEd.Default__ListLoopingEmittersCommandlet")); }
}
