module UnrealScript.TribesGame.TrCTFBase;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCTFBase")()); }
	private static __gshared TrCTFBase mDefaultProperties;
	@property final static TrCTFBase DefaultProperties() { mixin(MGDPC!(TrCTFBase, "TrCTFBase TribesGame.Default__TrCTFBase")()); }
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
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrCTFBase.ReplicatedEvent")()); }
			ScriptFunction SetBlitzStandActive() { mixin(MGF!("mSetBlitzStandActive", "Function TribesGame.TrCTFBase.SetBlitzStandActive")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrCTFBase.PostBeginPlay")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrCTFBase.PostRenderFor")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrCTFBase.PostInitAnimTree")()); }
			ScriptFunction OnFlagComesHome() { mixin(MGF!("mOnFlagComesHome", "Function TribesGame.TrCTFBase.OnFlagComesHome")()); }
			ScriptFunction OnFlagTaken() { mixin(MGF!("mOnFlagTaken", "Function TribesGame.TrCTFBase.OnFlagTaken")()); }
			ScriptFunction SpawnHelpTextCollisionProxy() { mixin(MGF!("mSpawnHelpTextCollisionProxy", "Function TribesGame.TrCTFBase.SpawnHelpTextCollisionProxy")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int CTFBlitzIndex() { mixin(MGPC!("int", 1124)()); }
			MaterialInstanceConstant m_MarkerMIC() { mixin(MGPC!("MaterialInstanceConstant", 1120)()); }
			TrAnimNodeBlendList m_OpenCloseBlendList() { mixin(MGPC!("TrAnimNodeBlendList", 1116)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_FlagStandMesh'!
		}
		bool r_bIsActive() { mixin(MGBPC!(1128, 0x1)()); }
		bool r_bIsActive(bool val) { mixin(MSBPC!(1128, 0x1)()); }
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
