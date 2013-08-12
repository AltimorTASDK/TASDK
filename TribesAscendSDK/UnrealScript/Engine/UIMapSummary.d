module UnrealScript.Engine.UIMapSummary;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UIMapSummary : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIMapSummary")); }
	private static __gshared UIMapSummary mDefaultProperties;
	@property final static UIMapSummary DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIMapSummary)("UIMapSummary Engine.Default__UIMapSummary")); }
	@property final auto ref
	{
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
		ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
		ScriptString ScreenshotPathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	}
}
