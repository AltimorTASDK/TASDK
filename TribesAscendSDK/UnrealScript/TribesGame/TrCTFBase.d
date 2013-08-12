module UnrealScript.TribesGame.TrCTFBase;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTCTFBase;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrCTFBase : UTCTFBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCTFBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mSetBlitzStandActive;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostRenderFor;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mOnFlagComesHome;
			ScriptFunction mOnFlagTaken;
			ScriptFunction mSpawnHelpTextCollisionProxy;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase.ReplicatedEvent")); }
			ScriptFunction SetBlitzStandActive() { return mSetBlitzStandActive ? mSetBlitzStandActive : (mSetBlitzStandActive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase.SetBlitzStandActive")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase.PostBeginPlay")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase.PostRenderFor")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase.PostInitAnimTree")); }
			ScriptFunction OnFlagComesHome() { return mOnFlagComesHome ? mOnFlagComesHome : (mOnFlagComesHome = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase.OnFlagComesHome")); }
			ScriptFunction OnFlagTaken() { return mOnFlagTaken ? mOnFlagTaken : (mOnFlagTaken = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase.OnFlagTaken")); }
			ScriptFunction SpawnHelpTextCollisionProxy() { return mSpawnHelpTextCollisionProxy ? mSpawnHelpTextCollisionProxy : (mSpawnHelpTextCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCTFBase.SpawnHelpTextCollisionProxy")); }
		}
	}
	@property final
	{
		auto ref
		{
			int CTFBlitzIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1124); }
			MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1120); }
			TrAnimNodeBlendList m_OpenCloseBlendList() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 1116); }
		}
		bool r_bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x1) != 0; }
		bool r_bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x1; } return val; }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void SetBlitzStandActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlitzStandActive, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
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
	void OnFlagComesHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFlagComesHome, cast(void*)0, cast(void*)0);
	}
	void OnFlagTaken()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFlagTaken, cast(void*)0, cast(void*)0);
	}
	void SpawnHelpTextCollisionProxy(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnHelpTextCollisionProxy, params.ptr, cast(void*)0);
	}
}
