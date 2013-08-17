module UnrealScript.Engine.Prefab;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PrefabSequence;

extern(C++) interface Prefab : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Prefab")); }
	private static __gshared Prefab mDefaultProperties;
	@property final static Prefab DefaultProperties() { mixin(MGDPC("Prefab", "Prefab Engine.Default__Prefab")); }
	@property final auto ref
	{
		ScriptArray!(UObject) PrefabArchetypes() { mixin(MGPC("ScriptArray!(UObject)", 64)); }
		ScriptArray!(UObject) RemovedArchetypes() { mixin(MGPC("ScriptArray!(UObject)", 76)); }
		Texture2D PrefabPreview() { mixin(MGPC("Texture2D", 92)); }
		// WARNING: Property 'PrefabSequence' has the same name as a defined type!
		int PrefabVersion() { mixin(MGPC("int", 60)); }
	}
}
