module UnrealScript.TribesGame.TrPaperDoll;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPaperDoll")()); }
	private static __gshared TrPaperDoll mDefaultProperties;
	@property final static TrPaperDoll DefaultProperties() { mixin(MGDPC!(TrPaperDoll, "TrPaperDoll TribesGame.Default__TrPaperDoll")()); }
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
			ScriptFunction IsFullyStreamed() { mixin(MGF!("mIsFullyStreamed", "Function TribesGame.TrPaperDoll.IsFullyStreamed")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrPaperDoll.PostBeginPlay")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrPaperDoll.PostInitAnimTree")()); }
			ScriptFunction GetCharacterSkeletalMesh() { mixin(MGF!("mGetCharacterSkeletalMesh", "Function TribesGame.TrPaperDoll.GetCharacterSkeletalMesh")()); }
			ScriptFunction OnCharacterMeshContentDataClassLoaded() { mixin(MGF!("mOnCharacterMeshContentDataClassLoaded", "Function TribesGame.TrPaperDoll.OnCharacterMeshContentDataClassLoaded")()); }
			ScriptFunction OnSkeletalMeshFinishedStreaming() { mixin(MGF!("mOnSkeletalMeshFinishedStreaming", "Function TribesGame.TrPaperDoll.OnSkeletalMeshFinishedStreaming")()); }
			ScriptFunction TryUpdatingPaperDoll() { mixin(MGF!("mTryUpdatingPaperDoll", "Function TribesGame.TrPaperDoll.TryUpdatingPaperDoll")()); }
			ScriptFunction SetFamilyInfo() { mixin(MGF!("mSetFamilyInfo", "Function TribesGame.TrPaperDoll.SetFamilyInfo")()); }
			ScriptFunction PlayCustomAnimation() { mixin(MGF!("mPlayCustomAnimation", "Function TribesGame.TrPaperDoll.PlayCustomAnimation")()); }
			ScriptFunction StopCustomAnimation() { mixin(MGF!("mStopCustomAnimation", "Function TribesGame.TrPaperDoll.StopCustomAnimation")()); }
			ScriptFunction ResetCustomAnimTimer() { mixin(MGF!("mResetCustomAnimTimer", "Function TribesGame.TrPaperDoll.ResetCustomAnimTimer")()); }
			ScriptFunction OnAnimEnd() { mixin(MGF!("mOnAnimEnd", "Function TribesGame.TrPaperDoll.OnAnimEnd")()); }
			ScriptFunction OnDeviceContentDataClassLoaded() { mixin(MGF!("mOnDeviceContentDataClassLoaded", "Function TribesGame.TrPaperDoll.OnDeviceContentDataClassLoaded")()); }
			ScriptFunction PlayLoadingGraphic() { mixin(MGF!("mPlayLoadingGraphic", "Function TribesGame.TrPaperDoll.PlayLoadingGraphic")()); }
			ScriptFunction StopLoadingGraphic() { mixin(MGF!("mStopLoadingGraphic", "Function TribesGame.TrPaperDoll.StopLoadingGraphic")()); }
			ScriptFunction OnWeaponFinishedStreaming() { mixin(MGF!("mOnWeaponFinishedStreaming", "Function TribesGame.TrPaperDoll.OnWeaponFinishedStreaming")()); }
			ScriptFunction SetWeaponOnlyMesh() { mixin(MGF!("mSetWeaponOnlyMesh", "Function TribesGame.TrPaperDoll.SetWeaponOnlyMesh")()); }
			ScriptFunction GetDevicePaperDollInfo() { mixin(MGF!("mGetDevicePaperDollInfo", "Function TribesGame.TrPaperDoll.GetDevicePaperDollInfo")()); }
			ScriptFunction SetMainMesh() { mixin(MGF!("mSetMainMesh", "Function TribesGame.TrPaperDoll.SetMainMesh")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrPaperDoll.Destroyed")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptClass m_LastFamilyClassRequest() { mixin(MGPC!(ScriptClass, 776)()); }
			ScriptClass m_LastDeviceOnlyRequest() { mixin(MGPC!(ScriptClass, 772)()); }
			TrPlayerController m_TrPlayerController() { mixin(MGPC!(TrPlayerController, 760)()); }
			ScriptClass m_LastDeviceClassRequest() { mixin(MGPC!(ScriptClass, 768)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_Lights() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 548)()); }
			ScriptClass m_DeviceContentDataClass() { mixin(MGPC!(ScriptClass, 904)()); }
			float m_fLastStreamingCheckTimestamp() { mixin(MGPC!(float, 900)()); }
			float m_fCheckStreamingFrequency() { mixin(MGPC!(float, 896)()); }
			TrObject.PaperDollInfo m_PendingPaperDollInfoSkin() { mixin(MGPC!(TrObject.PaperDollInfo, 840)()); }
			TrObject.PaperDollInfo m_PendingPaperDollInfoDevice() { mixin(MGPC!(TrObject.PaperDollInfo, 784)()); }
			int m_LastSkinIdRequest() { mixin(MGPC!(int, 780)()); }
			TrObject.PaperDollInfo m_CurrentPaperDollInfo() { mixin(MGPC!(TrObject.PaperDollInfo, 704)()); }
			float m_fMaxCustomAnimTime() { mixin(MGPC!(float, 700)()); }
			float m_fMinCustomAnimTime() { mixin(MGPC!(float, 696)()); }
			AnimNodePlayCustomAnim m_SidekickCustomAnimNode() { mixin(MGPC!(AnimNodePlayCustomAnim, 692)()); }
			AnimNodePlayCustomAnim m_CharacterCustomAnimNode() { mixin(MGPC!(AnimNodePlayCustomAnim, 688)()); }
			Vector m_vOffsetHeavy() { mixin(MGPC!(Vector, 676)()); }
			Vector m_vOffsetMedium() { mixin(MGPC!(Vector, 664)()); }
			Vector m_vOffsetLight() { mixin(MGPC!(Vector, 652)()); }
			Vector m_vBackdropOffset() { mixin(MGPC!(Vector, 640)()); }
			float m_fBackdropScale16x10() { mixin(MGPC!(float, 636)()); }
			float m_fBackdropScale16x9() { mixin(MGPC!(float, 632)()); }
			float m_fBackdropScale4x3() { mixin(MGPC!(float, 628)()); }
			MaterialInstanceConstant m_DiamondSwordBackdropMaterial() { mixin(MGPC!(MaterialInstanceConstant, 624)()); }
			MaterialInstanceConstant m_BloodEagleBackdropMaterial() { mixin(MGPC!(MaterialInstanceConstant, 620)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_BackdropMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_SidekickMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_WeaponMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_CharacterMesh'!
			ScriptClass m_TrDeviceClass() { mixin(MGPC!(ScriptClass, 600)()); }
			ScriptClass m_FamilyInfoClass() { mixin(MGPC!(ScriptClass, 596)()); }
			Vector m_vViewOffset16x10() { mixin(MGPC!(Vector, 584)()); }
			Vector m_vViewOffset16x9() { mixin(MGPC!(Vector, 572)()); }
			Vector m_vViewOffset4x3() { mixin(MGPC!(Vector, 560)()); }
		}
		bool m_bWasLastMeshSwapRequestNonWeapon() { mixin(MGBPC!(764, 0x1)()); }
		bool m_bWasLastMeshSwapRequestNonWeapon(bool val) { mixin(MSBPC!(764, 0x1)()); }
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
