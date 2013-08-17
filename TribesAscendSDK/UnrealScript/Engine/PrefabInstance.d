module UnrealScript.Engine.PrefabInstance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Prefab;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrefabSequence;

extern(C++) interface PrefabInstance : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PrefabInstance")); }
	private static __gshared PrefabInstance mDefaultProperties;
	@property final static PrefabInstance DefaultProperties() { mixin(MGDPC("PrefabInstance", "PrefabInstance Engine.Default__PrefabInstance")); }
	@property final auto ref
	{
		ScriptArray!(ubyte) PI_Bytes() { mixin(MGPC("ScriptArray!(ubyte)", 556)); }
		ScriptArray!(UObject) PI_CompleteObjects() { mixin(MGPC("ScriptArray!(UObject)", 568)); }
		ScriptArray!(UObject) PI_ReferencedObjects() { mixin(MGPC("ScriptArray!(UObject)", 580)); }
		ScriptArray!(ScriptString) PI_SavedNames() { mixin(MGPC("ScriptArray!(ScriptString)", 592)); }
		// ERROR: Unsupported object class 'MapProperty' for the property named 'PI_ObjectMap'!
		int PI_LicenseePackageVersion() { mixin(MGPC("int", 552)); }
		int PI_PackageVersion() { mixin(MGPC("int", 548)); }
		PrefabSequence SequenceInstance() { mixin(MGPC("PrefabSequence", 544)); }
		// ERROR: Unsupported object class 'MapProperty' for the property named 'ArchetypeToInstanceMap'!
		int TemplateVersion() { mixin(MGPC("int", 480)); }
		Prefab TemplatePrefab() { mixin(MGPC("Prefab", 476)); }
	}
}
