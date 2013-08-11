module UnrealScript.TribesGame.TrVehicleStation;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrVehiclePad;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrStation;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicleStation : TrStation
{
	public static immutable auto SPAWNED_VEHICLE_LIST_MASK = 0xF;
	struct VehicleSpawnInfo
	{
		public @property final auto ref Rotator m_rSpawnRotOffset() { return *cast(Rotator*)(cast(size_t)&this + 20); }
		private ubyte __m_rSpawnRotOffset[12];
		public @property final auto ref Vector m_vSpawnLocOffset() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __m_vSpawnLocOffset[12];
		public @property final auto ref int m_nMaxCount() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __m_nMaxCount[4];
		public @property final auto ref ScriptClass m_VehicleClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __m_VehicleClass[4];
	}
	public @property final auto ref TrAnimNodeBlendList m_VehicleStationBlendNode() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 1596); }
	public @property final auto ref float m_fTimeToSpawnVehicleAfterRequest() { return *cast(float*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref float m_fInstigatorTeleportTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1588); }
	public @property final auto ref TrPawn m_PawnRequestingVehicle() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 1584); }
	public @property final auto ref TrVehicle m_LastSpawnedVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 1580); }
	public @property final auto ref float m_fSpawnTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
	public @property final auto ref float m_fPostSpawnLockoutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
	public @property final auto ref TrObject.EVehicleTypes m_LastRequestedVehicleType() { return *cast(TrObject.EVehicleTypes*)(cast(size_t)cast(void*)this + 1569); }
	public @property final auto ref ubyte r_nSpawnSequenceEnded() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1568); }
	public @property final bool r_bSpawnSequenceStarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1564) & 0x2) != 0; }
	public @property final bool r_bSpawnSequenceStarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1564) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1564) &= ~0x2; } return val; }
	public @property final bool r_bIsLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1564) & 0x1) != 0; }
	public @property final bool r_bIsLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1564) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1564) &= ~0x1; } return val; }
	public @property final auto ref int r_nSpawnedVehicles() { return *cast(int*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref TrVehiclePad m_VehiclePad() { return *cast(TrVehiclePad*)(cast(size_t)cast(void*)this + 1556); }
	public @property final auto ref TrVehicleStation.VehicleSpawnInfo m_SpawnList() { return *cast(TrVehicleStation.VehicleSpawnInfo*)(cast(size_t)cast(void*)this + 1396); }
	final bool RequestSpawnVehicle(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76897], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int GetNumVehiclesSpawnedByType(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77814], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int GetMaxVehicleCountAllowed(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77816], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114999], params.ptr, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115001], params.ptr, cast(void*)0);
	}
	final void PawnEnteredStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115003], params.ptr, cast(void*)0);
	}
	final void PawnLeftStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115007], params.ptr, cast(void*)0);
	}
	final void PlayStationEnteredEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115009], cast(void*)0, cast(void*)0);
	}
	final void PlayStationLeftEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115011], cast(void*)0, cast(void*)0);
	}
	final void PlayRetractAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115012], cast(void*)0, cast(void*)0);
	}
	final void PlayVehiclePadDeployAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115013], cast(void*)0, cast(void*)0);
	}
	final void PlayVehiclePadCollapseAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115014], cast(void*)0, cast(void*)0);
	}
	final void SpawnVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115017], cast(void*)0, cast(void*)0);
	}
	final void TeleportDriverToVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115020], cast(void*)0, cast(void*)0);
	}
	final void Unlock()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115021], cast(void*)0, cast(void*)0);
	}
	final bool AbleToSpawnVehicleType(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115022], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void AddVehicleToPackedList(TrObject.EVehicleTypes VehicleType, int Num)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		*cast(int*)&params[4] = Num;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115029], params.ptr, cast(void*)0);
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115034], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	final bool ShouldPostRenderForCaH()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115036], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
