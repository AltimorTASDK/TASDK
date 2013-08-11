module UnrealScript.Engine.UIConfigSectionProvider;

import ScriptClasses;
import UnrealScript.Engine.UIConfigProvider;

extern(C++) interface UIConfigSectionProvider : UIConfigProvider
{
	public @property final auto ref ScriptString SectionName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 88); }
}
