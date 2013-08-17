module UnrealScript.Core.Component;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Component : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.Component")); }
	private static __gshared Component mDefaultProperties;
	@property final static Component DefaultProperties() { mixin(MGDPC("Component", "Component Core.Default__Component")); }
	@property final auto ref
	{
		ScriptClass TemplateOwnerClass() { mixin(MGPC("ScriptClass", 60)); }
		ScriptName TemplateName() { mixin(MGPC("ScriptName", 64)); }
	}
}
