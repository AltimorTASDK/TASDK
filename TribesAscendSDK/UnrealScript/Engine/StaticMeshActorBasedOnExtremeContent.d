module UnrealScript.Engine.StaticMeshActorBasedOnExtremeContent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface StaticMeshActorBasedOnExtremeContent : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.StaticMeshActorBasedOnExtremeContent")); }
	private static __gshared StaticMeshActorBasedOnExtremeContent mDefaultProperties;
	@property final static StaticMeshActorBasedOnExtremeContent DefaultProperties() { mixin(MGDPC("StaticMeshActorBasedOnExtremeContent", "StaticMeshActorBasedOnExtremeContent Engine.Default__StaticMeshActorBasedOnExtremeContent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetMaterialBasedOnExtremeContent;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.StaticMeshActorBasedOnExtremeContent.PostBeginPlay")); }
			ScriptFunction SetMaterialBasedOnExtremeContent() { mixin(MGF("mSetMaterialBasedOnExtremeContent", "Function Engine.StaticMeshActorBasedOnExtremeContent.SetMaterialBasedOnExtremeContent")); }
		}
	}
	struct SMMaterialSetterDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum")); }
		@property final auto ref
		{
			MaterialInterface TheMaterial() { mixin(MGPS("MaterialInterface", 4)); }
			int MaterialIndex() { mixin(MGPS("int", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum) ExtremeContent() { mixin(MGPC("ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum)", 480)); }
		ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum) NonExtremeContent() { mixin(MGPC("ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum)", 492)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'StaticMeshComponent'!
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetMaterialBasedOnExtremeContent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaterialBasedOnExtremeContent, cast(void*)0, cast(void*)0);
	}
}
