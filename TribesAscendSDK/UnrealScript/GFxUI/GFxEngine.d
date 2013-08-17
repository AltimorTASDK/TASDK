module UnrealScript.GFxUI.GFxEngine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GFxEngine : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.GFxEngine")); }
	private static __gshared GFxEngine mDefaultProperties;
	@property final static GFxEngine DefaultProperties() { mixin(MGDPC("GFxEngine", "GFxEngine GFxUI.Default__GFxEngine")); }
	struct GCReference
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxEngine.GCReference")); }
		@property final auto ref
		{
			int m_statid() { mixin(MGPS("int", 8)); }
			int m_count() { mixin(MGPS("int", 4)); }
			UObject m_object() { mixin(MGPS("UObject", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GFxEngine.GCReference) GCReferences() { mixin(MGPC("ScriptArray!(GFxEngine.GCReference)", 60)); }
		int RefCount() { mixin(MGPC("int", 72)); }
	}
}
