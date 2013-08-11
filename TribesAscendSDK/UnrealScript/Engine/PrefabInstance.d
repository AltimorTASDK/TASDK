module UnrealScript.Engine.PrefabInstance;

import ScriptClasses;
import UnrealScript.Engine.Prefab;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrefabSequence;

extern(C++) interface PrefabInstance : Actor
{
	public @property final auto ref ScriptArray!(ubyte) PI_Bytes() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref ScriptArray!(UObject) PI_CompleteObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref ScriptArray!(UObject) PI_ReferencedObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref ScriptArray!(ScriptString) PI_SavedNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref int PI_LicenseePackageVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref int PI_PackageVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref PrefabSequence SequenceInstance() { return *cast(PrefabSequence*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref int TemplateVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref Prefab TemplatePrefab() { return *cast(Prefab*)(cast(size_t)cast(void*)this + 476); }
}
