module UnrealScript.Engine.AnimSet;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimSet : UObject
{
	struct AnimSetMeshLinkup
	{
		public @property final auto ref ScriptArray!(int) BoneToTrackTable() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
		private ubyte __BoneToTrackTable[12];
	}
	public @property final auto ref ScriptArray!(ScriptName) TrackBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(AnimSequence) Sequences() { return *cast(ScriptArray!(AnimSequence)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptArray!(AnimSet.AnimSetMeshLinkup) LinkupCache() { return *cast(ScriptArray!(AnimSet.AnimSetMeshLinkup)*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptArray!(ubyte) BoneUseAnimTranslation() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref ScriptArray!(ubyte) ForceUseMeshTranslation() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptArray!(ScriptName) UseTranslationBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptArray!(ScriptName) ForceMeshTranslationBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptName BestRatioSkelMeshName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref ScriptName PreviewSkelMeshName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
	public @property final bool bAnimRotationOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bAnimRotationOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}
