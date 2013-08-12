module UnrealScript.Engine.StaticMeshActorBasedOnExtremeContent;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface StaticMeshActorBasedOnExtremeContent : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticMeshActorBasedOnExtremeContent")); }
	private static __gshared StaticMeshActorBasedOnExtremeContent mDefaultProperties;
	@property final static StaticMeshActorBasedOnExtremeContent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticMeshActorBasedOnExtremeContent)("StaticMeshActorBasedOnExtremeContent Engine.Default__StaticMeshActorBasedOnExtremeContent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetMaterialBasedOnExtremeContent;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.StaticMeshActorBasedOnExtremeContent.PostBeginPlay")); }
			ScriptFunction SetMaterialBasedOnExtremeContent() { return mSetMaterialBasedOnExtremeContent ? mSetMaterialBasedOnExtremeContent : (mSetMaterialBasedOnExtremeContent = ScriptObject.Find!(ScriptFunction)("Function Engine.StaticMeshActorBasedOnExtremeContent.SetMaterialBasedOnExtremeContent")); }
		}
	}
	struct SMMaterialSetterDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum")); }
		@property final auto ref
		{
			MaterialInterface TheMaterial() { return *cast(MaterialInterface*)(cast(size_t)&this + 4); }
			int MaterialIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum) ExtremeContent() { return *cast(ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum)*)(cast(size_t)cast(void*)this + 480); }
		ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum) NonExtremeContent() { return *cast(ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum)*)(cast(size_t)cast(void*)this + 492); }
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
