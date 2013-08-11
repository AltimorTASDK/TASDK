module UnrealScript.Engine.CoverReplicator;

import ScriptClasses;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.ReplicationInfo;

extern(C++) interface CoverReplicator : ReplicationInfo
{
public extern(D):
	struct CoverReplicationInfo
	{
		private ubyte __buffer__[52];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(ubyte) SlotsEnabled() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 4); }
			ScriptArray!(ubyte) SlotsDisabled() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 16); }
			ScriptArray!(ubyte) SlotsAdjusted() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 28); }
			ScriptArray!(CoverReplicator.ManualCoverTypeInfo) SlotsCoverTypeChanged() { return *cast(ScriptArray!(CoverReplicator.ManualCoverTypeInfo)*)(cast(size_t)&this + 40); }
			CoverLink Link() { return *cast(CoverLink*)(cast(size_t)&this + 0); }
		}
	}
	struct ManualCoverTypeInfo
	{
		private ubyte __buffer__[2];
	public extern(D):
		@property final auto ref
		{
			CoverLink.ECoverType ManualCoverType() { return *cast(CoverLink.ECoverType*)(cast(size_t)&this + 1); }
			ubyte SlotIndex() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(CoverReplicator.CoverReplicationInfo) CoverReplicationData() { return *cast(ScriptArray!(CoverReplicator.CoverReplicationInfo)*)(cast(size_t)cast(void*)this + 476); }
final:
	void PurgeOldEntries()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13464], cast(void*)0, cast(void*)0);
	}
	void ReplicateInitialCoverInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13466], cast(void*)0, cast(void*)0);
	}
	void ClientSetOwner(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13468], params.ptr, cast(void*)0);
	}
	void ServerSendInitialCoverReplicationInfo(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13470], params.ptr, cast(void*)0);
	}
	void ClientReceiveInitialCoverReplicationInfo(int Index, CoverLink Link, bool bLinkDisabled, ubyte NumSlotsEnabled, ubyte SlotsEnabled, ubyte NumSlotsDisabled, ubyte SlotsDisabled, ubyte NumSlotsAdjusted, ubyte SlotsAdjusted, ubyte NumCoverTypesChanged, CoverReplicator.ManualCoverTypeInfo SlotsCoverTypeChanged, bool bDone)
	{
		ubyte params[76];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(CoverLink*)&params[4] = Link;
		*cast(bool*)&params[8] = bLinkDisabled;
		params[12] = NumSlotsEnabled;
		params[13] = SlotsEnabled;
		params[21] = NumSlotsDisabled;
		params[22] = SlotsDisabled;
		params[30] = NumSlotsAdjusted;
		params[31] = SlotsAdjusted;
		params[39] = NumCoverTypesChanged;
		*cast(CoverReplicator.ManualCoverTypeInfo*)&params[40] = SlotsCoverTypeChanged;
		*cast(bool*)&params[72] = bDone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13483], params.ptr, cast(void*)0);
	}
	void NotifyEnabledSlots(CoverLink Link, ScriptArray!(int)* SlotIndices)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(ScriptArray!(int)*)&params[4] = *SlotIndices;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13497], params.ptr, cast(void*)0);
		*SlotIndices = *cast(ScriptArray!(int)*)&params[4];
	}
	void ServerSendEnabledSlots(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13505], params.ptr, cast(void*)0);
	}
	void ClientReceiveEnabledSlots(int Index, CoverLink Link, ubyte NumSlotsEnabled, ubyte SlotsEnabled, bool bDone)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(CoverLink*)&params[4] = Link;
		params[8] = NumSlotsEnabled;
		params[9] = SlotsEnabled;
		*cast(bool*)&params[20] = bDone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13512], params.ptr, cast(void*)0);
	}
	void NotifyDisabledSlots(CoverLink Link, ScriptArray!(int)* SlotIndices)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(ScriptArray!(int)*)&params[4] = *SlotIndices;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13519], params.ptr, cast(void*)0);
		*SlotIndices = *cast(ScriptArray!(int)*)&params[4];
	}
	void ServerSendDisabledSlots(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13527], params.ptr, cast(void*)0);
	}
	void ClientReceiveDisabledSlots(int Index, CoverLink Link, ubyte NumSlotsDisabled, ubyte SlotsDisabled, bool bDone)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(CoverLink*)&params[4] = Link;
		params[8] = NumSlotsDisabled;
		params[9] = SlotsDisabled;
		*cast(bool*)&params[20] = bDone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13534], params.ptr, cast(void*)0);
	}
	void NotifyAutoAdjustSlots(CoverLink Link, ScriptArray!(int)* SlotIndices)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(ScriptArray!(int)*)&params[4] = *SlotIndices;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13541], params.ptr, cast(void*)0);
		*SlotIndices = *cast(ScriptArray!(int)*)&params[4];
	}
	void ServerSendAdjustedSlots(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13549], params.ptr, cast(void*)0);
	}
	void ClientReceiveAdjustedSlots(int Index, CoverLink Link, ubyte NumSlotsAdjusted, ubyte SlotsAdjusted, bool bDone)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(CoverLink*)&params[4] = Link;
		params[8] = NumSlotsAdjusted;
		params[9] = SlotsAdjusted;
		*cast(bool*)&params[20] = bDone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13556], params.ptr, cast(void*)0);
	}
	void NotifySetManualCoverTypeForSlots(CoverLink Link, ScriptArray!(int)* SlotIndices, CoverLink.ECoverType NewCoverType)
	{
		ubyte params[17];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(ScriptArray!(int)*)&params[4] = *SlotIndices;
		*cast(CoverLink.ECoverType*)&params[16] = NewCoverType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13563], params.ptr, cast(void*)0);
		*SlotIndices = *cast(ScriptArray!(int)*)&params[4];
	}
	void ServerSendManualCoverTypeSlots(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13572], params.ptr, cast(void*)0);
	}
	void ClientReceiveManualCoverTypeSlots(int Index, CoverLink Link, ubyte NumCoverTypesChanged, CoverReplicator.ManualCoverTypeInfo SlotsCoverTypeChanged, bool bDone)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(CoverLink*)&params[4] = Link;
		params[8] = NumCoverTypesChanged;
		*cast(CoverReplicator.ManualCoverTypeInfo*)&params[12] = SlotsCoverTypeChanged;
		*cast(bool*)&params[44] = bDone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13579], params.ptr, cast(void*)0);
	}
	void NotifyLinkDisabledStateChange(CoverLink Link)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13586], params.ptr, cast(void*)0);
	}
	void ServerSendLinkDisabledState(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13590], params.ptr, cast(void*)0);
	}
	void ClientReceiveLinkDisabledState(int Index, CoverLink Link, bool bLinkDisabled)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(CoverLink*)&params[4] = Link;
		*cast(bool*)&params[8] = bLinkDisabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13592], params.ptr, cast(void*)0);
	}
}
