module UnrealScript.Engine.SkeletalMeshActorBasedOnExtremeContent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SkeletalMeshActor;

extern(C++) interface SkeletalMeshActorBasedOnExtremeContent : SkeletalMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkeletalMeshActorBasedOnExtremeContent")()); }
	private static __gshared SkeletalMeshActorBasedOnExtremeContent mDefaultProperties;
	@property final static SkeletalMeshActorBasedOnExtremeContent DefaultProperties() { mixin(MGDPC!(SkeletalMeshActorBasedOnExtremeContent, "SkeletalMeshActorBasedOnExtremeContent Engine.Default__SkeletalMeshActorBasedOnExtremeContent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetMaterialBasedOnExtremeContent;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.SkeletalMeshActorBasedOnExtremeContent.PostBeginPlay")()); }
			ScriptFunction SetMaterialBasedOnExtremeContent() { mixin(MGF!("mSetMaterialBasedOnExtremeContent", "Function Engine.SkeletalMeshActorBasedOnExtremeContent.SetMaterialBasedOnExtremeContent")()); }
		}
	}
	struct SkelMaterialSetterDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum")()); }
		@property final auto ref
		{
			MaterialInterface TheMaterial() { mixin(MGPS!(MaterialInterface, 4)()); }
			int MaterialIndex() { mixin(MGPS!(int, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum) ExtremeContent() { mixin(MGPC!(ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum), 536)()); }
		ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum) NonExtremeContent() { mixin(MGPC!(ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum), 548)()); }
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
