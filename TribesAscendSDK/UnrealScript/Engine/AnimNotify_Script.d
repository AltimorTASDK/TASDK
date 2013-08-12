module UnrealScript.Engine.AnimNotify_Script;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Script : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_Script")); }
	private static __gshared AnimNotify_Script mDefaultProperties;
	@property final static AnimNotify_Script DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify_Script)("AnimNotify_Script Engine.Default__AnimNotify_Script")); }
	@property final auto ref
	{
		ScriptName NotifyEndName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
		ScriptName NotifyTickName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
		ScriptName NotifyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
	}
}
