module UnrealScript.Engine.PhysicsAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.RB_ConstraintSetup;
import UnrealScript.Engine.PhysicsAssetInstance;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface PhysicsAsset : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PhysicsAsset")()); }
	private static __gshared PhysicsAsset mDefaultProperties;
	@property final static PhysicsAsset DefaultProperties() { mixin(MGDPC!(PhysicsAsset, "PhysicsAsset Engine.Default__PhysicsAsset")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFindBodyIndex;
		public @property static final ScriptFunction FindBodyIndex() { mixin(MGF!("mFindBodyIndex", "Function Engine.PhysicsAsset.FindBodyIndex")()); }
	}
	@property final auto ref
	{
		ScriptArray!(RB_ConstraintSetup) ConstraintSetup() { mixin(MGPC!(ScriptArray!(RB_ConstraintSetup), 148)()); }
		ScriptArray!(RB_BodySetup) BodySetup() { mixin(MGPC!(ScriptArray!(RB_BodySetup), 64)()); }
		ScriptArray!(int) BoundsBodies() { mixin(MGPC!(ScriptArray!(int), 136)()); }
		PhysicsAssetInstance DefaultInstance() { mixin(MGPC!(PhysicsAssetInstance, 160)()); }
		UObject.Map_Mirror BodySetupIndexMap() { mixin(MGPC!(UObject.Map_Mirror, 76)()); }
		SkeletalMesh DefaultSkelMesh() { mixin(MGPC!(SkeletalMesh, 60)()); }
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
