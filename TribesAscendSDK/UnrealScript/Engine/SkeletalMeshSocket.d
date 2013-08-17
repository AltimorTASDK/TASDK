module UnrealScript.Engine.SkeletalMeshSocket;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SkeletalMeshSocket : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkeletalMeshSocket")()); }
	private static __gshared SkeletalMeshSocket mDefaultProperties;
	@property final static SkeletalMeshSocket DefaultProperties() { mixin(MGDPC!(SkeletalMeshSocket, "SkeletalMeshSocket Engine.Default__SkeletalMeshSocket")()); }
	@property final auto ref
	{
		StaticMesh PreviewStaticMesh() { mixin(MGPC!("StaticMesh", 120)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewSkelComp'!
		SkeletalMesh PreviewSkelMesh() { mixin(MGPC!("SkeletalMesh", 112)()); }
		Vector RelativeScale() { mixin(MGPC!("Vector", 100)()); }
		Rotator RelativeRotation() { mixin(MGPC!("Rotator", 88)()); }
		Vector RelativeLocation() { mixin(MGPC!("Vector", 76)()); }
		ScriptName BoneName() { mixin(MGPC!("ScriptName", 68)()); }
		ScriptName SocketName() { mixin(MGPC!("ScriptName", 60)()); }
	}
}
