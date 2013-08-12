module UnrealScript.Engine.UIConfigFileProvider;

import ScriptClasses;
import UnrealScript.Engine.UIConfigSectionProvider;
import UnrealScript.Engine.UIConfigProvider;

extern(C++) interface UIConfigFileProvider : UIConfigProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIConfigFileProvider")); }
	@property final auto ref
	{
		ScriptArray!(UIConfigSectionProvider) Sections() { return *cast(ScriptArray!(UIConfigSectionProvider)*)(cast(size_t)cast(void*)this + 88); }
		ScriptString ConfigFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
}
