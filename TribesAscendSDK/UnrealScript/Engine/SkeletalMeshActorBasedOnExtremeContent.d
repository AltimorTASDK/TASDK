module UnrealScript.Engine.SkeletalMeshActorBasedOnExtremeContent;

import ScriptClasses;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SkeletalMeshActor;

extern(C++) interface SkeletalMeshActorBasedOnExtremeContent : SkeletalMeshActor
{
	struct SkelMaterialSetterDatum
	{
		public @property final auto ref MaterialInterface TheMaterial() { return *cast(MaterialInterface*)(cast(size_t)&this + 4); }
		private ubyte __TheMaterial[4];
		public @property final auto ref int MaterialIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __MaterialIndex[4];
	}
	public @property final auto ref ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum) ExtremeContent() { return *cast(ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum)*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum) NonExtremeContent() { return *cast(ScriptArray!(SkeletalMeshActorBasedOnExtremeContent.SkelMaterialSetterDatum)*)(cast(size_t)cast(void*)this + 548); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26749], cast(void*)0, cast(void*)0);
	}
	final void SetMaterialBasedOnExtremeContent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26750], cast(void*)0, cast(void*)0);
	}
}
