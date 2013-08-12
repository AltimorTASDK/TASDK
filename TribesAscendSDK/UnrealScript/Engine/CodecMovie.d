module UnrealScript.Engine.CodecMovie;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface CodecMovie : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CodecMovie")); }
	private static __gshared CodecMovie mDefaultProperties;
	@property final static CodecMovie DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CodecMovie)("CodecMovie Engine.Default__CodecMovie")); }
	@property final auto ref float PlaybackDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
