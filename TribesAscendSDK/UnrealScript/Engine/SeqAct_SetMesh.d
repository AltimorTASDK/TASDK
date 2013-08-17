module UnrealScript.Engine.SeqAct_SetMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SeqAct_SetMesh : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetMesh")()); }
	private static __gshared SeqAct_SetMesh mDefaultProperties;
	@property final static SeqAct_SetMesh DefaultProperties() { mixin(MGDPC!(SeqAct_SetMesh, "SeqAct_SetMesh Engine.Default__SeqAct_SetMesh")()); }
	enum EMeshType : ubyte
	{
		MeshType_StaticMesh = 0,
		MeshType_SkeletalMesh = 1,
		MeshType_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			SeqAct_SetMesh.EMeshType MeshType() { mixin(MGPC!(SeqAct_SetMesh.EMeshType, 240)()); }
			StaticMesh NewStaticMesh() { mixin(MGPC!(StaticMesh, 236)()); }
			SkeletalMesh NewSkeletalMesh() { mixin(MGPC!(SkeletalMesh, 232)()); }
		}
		bool bIsAllowedToMove() { mixin(MGBPC!(244, 0x1)()); }
		bool bIsAllowedToMove(bool val) { mixin(MSBPC!(244, 0x1)()); }
		bool bAllowDecalsToReattach() { mixin(MGBPC!(244, 0x2)()); }
		bool bAllowDecalsToReattach(bool val) { mixin(MSBPC!(244, 0x2)()); }
	}
}
