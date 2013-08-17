module UnrealScript.TribesGame.TrVehicleStation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrVehiclePad;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrStation;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicleStation : TrStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleStation")()); }
	private static __gshared TrVehicleStation mDefaultProperties;
	@property final static TrVehicleStation DefaultProperties() { mixin(MGDPC!(TrVehicleStation, "TrVehicleStation TribesGame.Default__TrVehicleStation")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRequestSpawnVehicle;
			ScriptFunction mGetNumVehiclesSpawnedByType;
			ScriptFunction mGetMaxVehicleCountAllowed;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mPawnEnteredStation;
			ScriptFunction mPawnLeftStation;
			ScriptFunction mPlayStationEnteredEffects;
			ScriptFunction mPlayStationLeftEffects;
			ScriptFunction mPlayRetractAnim;
			ScriptFunction mPlayVehiclePadDeployAnim;
			ScriptFunction mPlayVehiclePadCollapseAnim;
			ScriptFunction mSpawnVehicle;
			ScriptFunction mTeleportDriverToVehicle;
			ScriptFunction mUnlock;
			ScriptFunction mAbleToSpawnVehicleType;
			ScriptFunction mAddVehicleToPackedList;
			ScriptFunction mGetMarker;
			ScriptFunction mShouldPostRenderForCaH;
		}
		public @property static final
		{
			ScriptFunction RequestSpawnVehicle() { mixin(MGF!("mRequestSpawnVehicle", "Function TribesGame.TrVehicleStation.RequestSpawnVehicle")()); }
			ScriptFunction GetNumVehiclesSpawnedByType() { mixin(MGF!("mGetNumVehiclesSpawnedByType", "Function TribesGame.TrVehicleStation.GetNumVehiclesSpawnedByType")()); }
			ScriptFunction GetMaxVehicleCountAllowed() { mixin(MGF!("mGetMaxVehicleCountAllowed", "Function TribesGame.TrVehicleStation.GetMaxVehicleCountAllowed")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrVehicleStation.ReplicatedEvent")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrVehicleStation.PostInitAnimTree")()); }
			ScriptFunction PawnEnteredStation() { mixin(MGF!("mPawnEnteredStation", "Function TribesGame.TrVehicleStation.PawnEnteredStation")()); }
			ScriptFunction PawnLeftStation() { mixin(MGF!("mPawnLeftStation", "Function TribesGame.TrVehicleStation.PawnLeftStation")()); }
			ScriptFunction PlayStationEnteredEffects() { mixin(MGF!("mPlayStationEnteredEffects", "Function TribesGame.TrVehicleStation.PlayStationEnteredEffects")()); }
			ScriptFunction PlayStationLeftEffects() { mixin(MGF!("mPlayStationLeftEffects", "Function TribesGame.TrVehicleStation.PlayStationLeftEffects")()); }
			ScriptFunction PlayRetractAnim() { mixin(MGF!("mPlayRetractAnim", "Function TribesGame.TrVehicleStation.PlayRetractAnim")()); }
			ScriptFunction PlayVehiclePadDeployAnim() { mixin(MGF!("mPlayVehiclePadDeployAnim", "Function TribesGame.TrVehicleStation.PlayVehiclePadDeployAnim")()); }
			ScriptFunction PlayVehiclePadCollapseAnim() { mixin(MGF!("mPlayVehiclePadCollapseAnim", "Function TribesGame.TrVehicleStation.PlayVehiclePadCollapseAnim")()); }
			ScriptFunction SpawnVehicle() { mixin(MGF!("mSpawnVehicle", "Function TribesGame.TrVehicleStation.SpawnVehicle")()); }
			ScriptFunction TeleportDriverToVehicle() { mixin(MGF!("mTeleportDriverToVehicle", "Function TribesGame.TrVehicleStation.TeleportDriverToVehicle")()); }
			ScriptFunction Unlock() { mixin(MGF!("mUnlock", "Function TribesGame.TrVehicleStation.Unlock")()); }
			ScriptFunction AbleToSpawnVehicleType() { mixin(MGF!("mAbleToSpawnVehicleType", "Function TribesGame.TrVehicleStation.AbleToSpawnVehicleType")()); }
			ScriptFunction AddVehicleToPackedList() { mixin(MGF!("mAddVehicleToPackedList", "Function TribesGame.TrVehicleStation.AddVehicleToPackedList")()); }
			ScriptFunction GetMarker() { mixin(MGF!("mGetMarker", "Function TribesGame.TrVehicleStation.GetMarker")()); }
			ScriptFunction ShouldPostRenderForCaH() { mixin(MGF!("mShouldPostRenderForCaH", "Function TribesGame.TrVehicleStation.ShouldPostRenderForCaH")()); }
		}
	}
	static struct Constants
	{
		enum SPAWNED_VEHICLE_LIST_MASK = 0xF;
	}
	struct VehicleSpawnInfo
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrVehicleStation.VehicleSpawnInfo")()); }
		@property final auto ref
		{
			Rotator m_rSpawnRotOffset() { mixin(MGPS!("Rotator", 20)()); }
			Vector m_vSpawnLocOffset() { mixin(MGPS!("Vector", 8)()); }
			int m_nMaxCount() { mixin(MGPS!("int", 4)()); }
			ScriptClass m_VehicleClass() { mixin(MGPS!("ScriptClass", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			TrAnimNodeBlendList m_VehicleStationBlendNode() { mixin(MGPC!("TrAnimNodeBlendList", 1596)()); }
			float m_fTimeToSpawnVehicleAfterRequest() { mixin(MGPC!("float", 1592)()); }
			float m_fInstigatorTeleportTime() { mixin(MGPC!("float", 1588)()); }
			TrPawn m_PawnRequestingVehicle() { mixin(MGPC!("TrPawn", 1584)()); }
			TrVehicle m_LastSpawnedVehicle() { mixin(MGPC!("TrVehicle", 1580)()); }
			float m_fSpawnTimeStamp() { mixin(MGPC!("float", 1576)()); }
			float m_fPostSpawnLockoutTime() { mixin(MGPC!("float", 1572)()); }
			TrObject.EVehicleTypes m_LastRequestedVehicleType() { mixin(MGPC!("TrObject.EVehicleTypes", 1569)()); }
			ubyte r_nSpawnSequenceEnded() { mixin(MGPC!("ubyte", 1568)()); }
			int r_nSpawnedVehicles() { mixin(MGPC!("int", 1560)()); }
			TrVehiclePad m_VehiclePad() { mixin(MGPC!("TrVehiclePad", 1556)()); }
			TrVehicleStation.VehicleSpawnInfo m_SpawnList() { mixin(MGPC!("TrVehicleStation.VehicleSpawnInfo", 1396)()); }
		}
		bool r_bSpawnSequenceStarted() { mixin(MGBPC!(1564, 0x2)()); }
		bool r_bSpawnSequenceStarted(bool val) { mixin(MSBPC!(1564, 0x2)()); }
		bool r_bIsLocked() { mixin(MGBPC!(1564, 0x1)()); }
		bool r_bIsLocked(bool val) { mixin(MSBPC!(1564, 0x1)()); }
	}
final:
	bool RequestSpawnVehicle(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestSpawnVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetNumVehiclesSpawnedByType(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumVehiclesSpawnedByType, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetMaxVehicleCountAllowed(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxVehicleCountAllowed, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
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
	void PawnEnteredStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredStation, params.ptr, cast(void*)0);
	}
	void PawnLeftStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeftStation, params.ptr, cast(void*)0);
	}
	void PlayStationEnteredEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationEnteredEffects, cast(void*)0, cast(void*)0);
	}
	void PlayStationLeftEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationLeftEffects, cast(void*)0, cast(void*)0);
	}
	void PlayRetractAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRetractAnim, cast(void*)0, cast(void*)0);
	}
	void PlayVehiclePadDeployAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehiclePadDeployAnim, cast(void*)0, cast(void*)0);
	}
	void PlayVehiclePadCollapseAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehiclePadCollapseAnim, cast(void*)0, cast(void*)0);
	}
	void SpawnVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnVehicle, cast(void*)0, cast(void*)0);
	}
	void TeleportDriverToVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeleportDriverToVehicle, cast(void*)0, cast(void*)0);
	}
	void Unlock()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Unlock, cast(void*)0, cast(void*)0);
	}
	bool AbleToSpawnVehicleType(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(Functions.AbleToSpawnVehicleType, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddVehicleToPackedList(TrObject.EVehicleTypes VehicleType, int Num)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		*cast(int*)&params[4] = Num;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVehicleToPackedList, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	bool ShouldPostRenderForCaH()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldPostRenderForCaH, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
