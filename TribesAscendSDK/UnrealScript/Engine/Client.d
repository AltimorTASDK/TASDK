module UnrealScript.Engine.Client;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Client : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Client")); }
	private static __gshared Client mDefaultProperties;
	@property final static Client DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Client)("Client Engine.Default__Client")); }
	@property final auto ref
	{
		float DisplayGamma() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
		float MinDesiredFrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		float InitialButtonRepeatDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
		float ButtonRepeatDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	}
}
