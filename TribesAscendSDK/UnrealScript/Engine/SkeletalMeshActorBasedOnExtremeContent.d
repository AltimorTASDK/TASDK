module UnrealScript.Engine.SkeletalMeshActorBasedOnExtremeContent;

import ScriptClasses;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SkeletalMeshActor;

extern(C++) interface SkeletalMeshActorBasedOnExtremeContent : SkeletalMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkeletalMeshActorBasedOnExtremeContent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetMaterialBasedOnExtremeContent;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActorBasedOnExtremeContent.PostBeginPlay")); }
			ScriptFunction SetMaterialBasedOnExtremeContent() { return mSetMaterialBasedOnExtremeContent ? mSetMaterialBasedOnExtremeContent : (mSetMaterialBasedOnExtremeContent = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActorBasedOnExtremeContent.SetMaterialBasedOnExtremeContent")); }
		}
	}
	struct SkelMaterialSetterDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum")); }
		@property final auto ref
		{
			MaterialInterface TheMaterial() { return *cast(MaterialInterface*)(cast(size_t)&this + 4); }
			int MaterialIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum) ExtremeContent() { return *cast(ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum)*)(cast(size_t)cast(void*)this + 536); }
		ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum) NonExtremeContent() { return *cast(ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum)*)(cast(size_t)cast(void*)this + 548); }
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
