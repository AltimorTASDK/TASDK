module UnrealScript.Engine.UIConfigSectionProvider;

import ScriptClasses;
import UnrealScript.Engine.UIConfigProvider;

extern(C++) interface UIConfigSectionProvider : UIConfigProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIConfigSectionProvider")); }
	@property final auto ref ScriptString SectionName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 88); }
}
