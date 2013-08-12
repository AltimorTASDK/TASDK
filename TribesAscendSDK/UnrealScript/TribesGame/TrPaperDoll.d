module UnrealScript.TribesGame.TrPaperDoll;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.SkeletalMeshActorMAT;
import UnrealScript.Engine.AnimNodePlayCustomAnim;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface TrPaperDoll : SkeletalMeshActorMAT
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPaperDoll")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsFullyStreamed;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mGetCharacterSkeletalMesh;
			ScriptFunction mOnCharacterMeshContentDataClassLoaded;
			ScriptFunction mOnSkeletalMeshFinishedStreaming;
			ScriptFunction mTryUpdatingPaperDoll;
			ScriptFunction mSetFamilyInfo;
			ScriptFunction mPlayCustomAnimation;
			ScriptFunction mStopCustomAnimation;
			ScriptFunction mResetCustomAnimTimer;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mOnDeviceContentDataClassLoaded;
			ScriptFunction mPlayLoadingGraphic;
			ScriptFunction mStopLoadingGraphic;
			ScriptFunction mOnWeaponFinishedStreaming;
			ScriptFunction mSetWeaponOnlyMesh;
			ScriptFunction mGetDevicePaperDollInfo;
			ScriptFunction mSetMainMesh;
			ScriptFunction mDestroyed;
		}
		public @property static final
		{
			ScriptFunction IsFullyStreamed() { return mIsFullyStreamed ? mIsFullyStreamed : (mIsFullyStreamed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.IsFullyStreamed")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.PostInitAnimTree")); }
			ScriptFunction GetCharacterSkeletalMesh() { return mGetCharacterSkeletalMesh ? mGetCharacterSkeletalMesh : (mGetCharacterSkeletalMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.GetCharacterSkeletalMesh")); }
			ScriptFunction OnCharacterMeshContentDataClassLoaded() { return mOnCharacterMeshContentDataClassLoaded ? mOnCharacterMeshContentDataClassLoaded : (mOnCharacterMeshContentDataClassLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.OnCharacterMeshContentDataClassLoaded")); }
			ScriptFunction OnSkeletalMeshFinishedStreaming() { return mOnSkeletalMeshFinishedStreaming ? mOnSkeletalMeshFinishedStreaming : (mOnSkeletalMeshFinishedStreaming = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.OnSkeletalMeshFinishedStreaming")); }
			ScriptFunction TryUpdatingPaperDoll() { return mTryUpdatingPaperDoll ? mTryUpdatingPaperDoll : (mTryUpdatingPaperDoll = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.TryUpdatingPaperDoll")); }
			ScriptFunction SetFamilyInfo() { return mSetFamilyInfo ? mSetFamilyInfo : (mSetFamilyInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.SetFamilyInfo")); }
			ScriptFunction PlayCustomAnimation() { return mPlayCustomAnimation ? mPlayCustomAnimation : (mPlayCustomAnimation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.PlayCustomAnimation")); }
			ScriptFunction StopCustomAnimation() { return mStopCustomAnimation ? mStopCustomAnimation : (mStopCustomAnimation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.StopCustomAnimation")); }
			ScriptFunction ResetCustomAnimTimer() { return mResetCustomAnimTimer ? mResetCustomAnimTimer : (mResetCustomAnimTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.ResetCustomAnimTimer")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.OnAnimEnd")); }
			ScriptFunction OnDeviceContentDataClassLoaded() { return mOnDeviceContentDataClassLoaded ? mOnDeviceContentDataClassLoaded : (mOnDeviceContentDataClassLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.OnDeviceContentDataClassLoaded")); }
			ScriptFunction PlayLoadingGraphic() { return mPlayLoadingGraphic ? mPlayLoadingGraphic : (mPlayLoadingGraphic = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.PlayLoadingGraphic")); }
			ScriptFunction StopLoadingGraphic() { return mStopLoadingGraphic ? mStopLoadingGraphic : (mStopLoadingGraphic = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.StopLoadingGraphic")); }
			ScriptFunction OnWeaponFinishedStreaming() { return mOnWeaponFinishedStreaming ? mOnWeaponFinishedStreaming : (mOnWeaponFinishedStreaming = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.OnWeaponFinishedStreaming")); }
			ScriptFunction SetWeaponOnlyMesh() { return mSetWeaponOnlyMesh ? mSetWeaponOnlyMesh : (mSetWeaponOnlyMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.SetWeaponOnlyMesh")); }
			ScriptFunction GetDevicePaperDollInfo() { return mGetDevicePaperDollInfo ? mGetDevicePaperDollInfo : (mGetDevicePaperDollInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.GetDevicePaperDollInfo")); }
			ScriptFunction SetMainMesh() { return mSetMainMesh ? mSetMainMesh : (mSetMainMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.SetMainMesh")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDoll.Destroyed")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptClass m_LastFamilyClassRequest() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 776); }
			ScriptClass m_LastDeviceOnlyRequest() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 772); }
			TrPlayerController m_TrPlayerController() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 760); }
			ScriptClass m_LastDeviceClassRequest() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 768); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_Lights() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 548); }
			ScriptClass m_DeviceContentDataClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 904); }
			float m_fLastStreamingCheckTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
			float m_fCheckStreamingFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 896); }
			TrObject.PaperDollInfo m_PendingPaperDollInfoSkin() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 840); }
			TrObject.PaperDollInfo m_PendingPaperDollInfoDevice() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 784); }
			int m_LastSkinIdRequest() { return *cast(int*)(cast(size_t)cast(void*)this + 780); }
			TrObject.PaperDollInfo m_CurrentPaperDollInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 704); }
			float m_fMaxCustomAnimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			float m_fMinCustomAnimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			AnimNodePlayCustomAnim m_SidekickCustomAnimNode() { return *cast(AnimNodePlayCustomAnim*)(cast(size_t)cast(void*)this + 692); }
			AnimNodePlayCustomAnim m_CharacterCustomAnimNode() { return *cast(AnimNodePlayCustomAnim*)(cast(size_t)cast(void*)this + 688); }
			Vector m_vOffsetHeavy() { return *cast(Vector*)(cast(size_t)cast(void*)this + 676); }
			Vector m_vOffsetMedium() { return *cast(Vector*)(cast(size_t)cast(void*)this + 664); }
			Vector m_vOffsetLight() { return *cast(Vector*)(cast(size_t)cast(void*)this + 652); }
			Vector m_vBackdropOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
			float m_fBackdropScale16x10() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			float m_fBackdropScale16x9() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float m_fBackdropScale4x3() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
			MaterialInstanceConstant m_DiamondSwordBackdropMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 624); }
			MaterialInstanceConstant m_BloodEagleBackdropMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 620); }
			ScriptClass m_TrDeviceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 600); }
			ScriptClass m_FamilyInfoClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 596); }
			Vector m_vViewOffset16x10() { return *cast(Vector*)(cast(size_t)cast(void*)this + 584); }
			Vector m_vViewOffset16x9() { return *cast(Vector*)(cast(size_t)cast(void*)this + 572); }
			Vector m_vViewOffset4x3() { return *cast(Vector*)(cast(size_t)cast(void*)this + 560); }
		}
		bool m_bWasLastMeshSwapRequestNonWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 764) & 0x1) != 0; }
		bool m_bWasLastMeshSwapRequestNonWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 764) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 764) &= ~0x1; } return val; }
	}
final:
	bool IsFullyStreamed(TrObject.PaperDollInfo PaperDoll)
	{
		ubyte params[60];
		params[] = 0;
		*cast(TrObject.PaperDollInfo*)params.ptr = PaperDoll;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFullyStreamed, params.ptr, cast(void*)0);
		return *cast(bool*)&params[56];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	SkeletalMesh GetCharacterSkeletalMesh(ScriptClass FamilyInfoClass, ubyte TeamNum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfoClass;
		params[4] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCharacterSkeletalMesh, params.ptr, cast(void*)0);
		return *cast(SkeletalMesh*)&params[8];
	}
	void OnCharacterMeshContentDataClassLoaded(ScriptClass Skin3PDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Skin3PDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCharacterMeshContentDataClassLoaded, params.ptr, cast(void*)0);
	}
	void OnSkeletalMeshFinishedStreaming(SkeletalMesh NewSkelMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = NewSkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSkeletalMeshFinishedStreaming, params.ptr, cast(void*)0);
	}
	void TryUpdatingPaperDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TryUpdatingPaperDoll, cast(void*)0, cast(void*)0);
	}
	void SetFamilyInfo(ScriptClass NewFamilyInfoClass, ScriptClass DeviceClass, ScriptClass skinClass, int TeamNum)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewFamilyInfoClass;
		*cast(ScriptClass*)&params[4] = DeviceClass;
		*cast(ScriptClass*)&params[8] = skinClass;
		*cast(int*)&params[12] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFamilyInfo, params.ptr, cast(void*)0);
	}
	void PlayCustomAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCustomAnimation, cast(void*)0, cast(void*)0);
	}
	void StopCustomAnimation(float FadeOutTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FadeOutTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopCustomAnimation, params.ptr, cast(void*)0);
	}
	void ResetCustomAnimTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetCustomAnimTimer, cast(void*)0, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	void OnDeviceContentDataClassLoaded(ScriptClass DeviceContentDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceContentDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDeviceContentDataClassLoaded, params.ptr, cast(void*)0);
	}
	void PlayLoadingGraphic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayLoadingGraphic, cast(void*)0, cast(void*)0);
	}
	void StopLoadingGraphic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopLoadingGraphic, cast(void*)0, cast(void*)0);
	}
	void OnWeaponFinishedStreaming(TrObject.PaperDollInfo NewPaperDollInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(TrObject.PaperDollInfo*)params.ptr = NewPaperDollInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnWeaponFinishedStreaming, params.ptr, cast(void*)0);
	}
	void SetWeaponOnlyMesh(ScriptClass WeaponClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = WeaponClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponOnlyMesh, params.ptr, cast(void*)0);
	}
	TrObject.PaperDollInfo GetDevicePaperDollInfo(ScriptClass WeaponClass)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = WeaponClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDevicePaperDollInfo, params.ptr, cast(void*)0);
		return *cast(TrObject.PaperDollInfo*)&params[4];
	}
	void SetMainMesh(TrObject.PaperDollInfo NewInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(TrObject.PaperDollInfo*)params.ptr = NewInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMainMesh, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
