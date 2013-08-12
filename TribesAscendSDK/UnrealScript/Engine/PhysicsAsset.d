module UnrealScript.Engine.PhysicsAsset;

import ScriptClasses;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.RB_ConstraintSetup;
import UnrealScript.Engine.PhysicsAssetInstance;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface PhysicsAsset : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PhysicsAsset")); }
	private static __gshared PhysicsAsset mDefaultProperties;
	@property final static PhysicsAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PhysicsAsset)("PhysicsAsset Engine.Default__PhysicsAsset")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFindBodyIndex;
		public @property static final ScriptFunction FindBodyIndex() { return mFindBodyIndex ? mFindBodyIndex : (mFindBodyIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.PhysicsAsset.FindBodyIndex")); }
	}
	@property final auto ref
	{
		ScriptArray!(RB_ConstraintSetup) ConstraintSetup() { return *cast(ScriptArray!(RB_ConstraintSetup)*)(cast(size_t)cast(void*)this + 148); }
		ScriptArray!(RB_BodySetup) BodySetup() { return *cast(ScriptArray!(RB_BodySetup)*)(cast(size_t)cast(void*)this + 64); }
		ScriptArray!(int) BoundsBodies() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 136); }
		PhysicsAssetInstance DefaultInstance() { return *cast(PhysicsAssetInstance*)(cast(size_t)cast(void*)this + 160); }
		UObject.Map_Mirror BodySetupIndexMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 76); }
		SkeletalMesh DefaultSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 60); }
	}
	final int FindBodyIndex(ScriptName BodyName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BodyName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBodyIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
