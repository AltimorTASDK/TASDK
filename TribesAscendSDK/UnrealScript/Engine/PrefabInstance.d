module UnrealScript.Engine.PrefabInstance;

import ScriptClasses;
import UnrealScript.Engine.Prefab;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrefabSequence;

extern(C++) interface PrefabInstance : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PrefabInstance")); }
	@property final auto ref
	{
		ScriptArray!(ubyte) PI_Bytes() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 556); }
		ScriptArray!(UObject) PI_CompleteObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 568); }
		ScriptArray!(UObject) PI_ReferencedObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 580); }
		ScriptArray!(ScriptString) PI_SavedNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 592); }
		int PI_LicenseePackageVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
		int PI_PackageVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
		PrefabSequence SequenceInstance() { return *cast(PrefabSequence*)(cast(size_t)cast(void*)this + 544); }
		int TemplateVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
		Prefab TemplatePrefab() { return *cast(Prefab*)(cast(size_t)cast(void*)this + 476); }
	}
}
