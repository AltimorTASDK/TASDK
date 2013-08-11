module UnrealScript.Engine.UIConfigFileProvider;

import ScriptClasses;
import UnrealScript.Engine.UIConfigSectionProvider;
import UnrealScript.Engine.UIConfigProvider;

extern(C++) interface UIConfigFileProvider : UIConfigProvider
{
	public @property final auto ref ScriptArray!(UIConfigSectionProvider) Sections() { return *cast(ScriptArray!(UIConfigSectionProvider)*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptString ConfigFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
}
