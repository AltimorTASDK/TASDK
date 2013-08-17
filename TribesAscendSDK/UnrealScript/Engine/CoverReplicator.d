module UnrealScript.Engine.CoverReplicator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.ReplicationInfo;

extern(C++) interface CoverReplicator : ReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CoverReplicator")()); }
	private static __gshared CoverReplicator mDefaultProperties;
	@property final static CoverReplicator DefaultProperties() { mixin(MGDPC!(CoverReplicator, "CoverReplicator Engine.Default__CoverReplicator")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPurgeOldEntries;
			ScriptFunction mReplicateInitialCoverInfo;
			ScriptFunction mClientSetOwner;
			ScriptFunction mServerSendInitialCoverReplicationInfo;
			ScriptFunction mClientReceiveInitialCoverReplicationInfo;
			ScriptFunction mNotifyEnabledSlots;
			ScriptFunction mServerSendEnabledSlots;
			ScriptFunction mClientReceiveEnabledSlots;
			ScriptFunction mNotifyDisabledSlots;
			ScriptFunction mServerSendDisabledSlots;
			ScriptFunction mClientReceiveDisabledSlots;
			ScriptFunction mNotifyAutoAdjustSlots;
			ScriptFunction mServerSendAdjustedSlots;
			ScriptFunction mClientReceiveAdjustedSlots;
			ScriptFunction mNotifySetManualCoverTypeForSlots;
			ScriptFunction mServerSendManualCoverTypeSlots;
			ScriptFunction mClientReceiveManualCoverTypeSlots;
			ScriptFunction mNotifyLinkDisabledStateChange;
			ScriptFunction mServerSendLinkDisabledState;
			ScriptFunction mClientReceiveLinkDisabledState;
		}
		public @property static final
		{
			ScriptFunction PurgeOldEntries() { mixin(MGF!("mPurgeOldEntries", "Function Engine.CoverReplicator.PurgeOldEntries")()); }
			ScriptFunction ReplicateInitialCoverInfo() { mixin(MGF!("mReplicateInitialCoverInfo", "Function Engine.CoverReplicator.ReplicateInitialCoverInfo")()); }
			ScriptFunction ClientSetOwner() { mixin(MGF!("mClientSetOwner", "Function Engine.CoverReplicator.ClientSetOwner")()); }
			ScriptFunction ServerSendInitialCoverReplicationInfo() { mixin(MGF!("mServerSendInitialCoverReplicationInfo", "Function Engine.CoverReplicator.ServerSendInitialCoverReplicationInfo")()); }
			ScriptFunction ClientReceiveInitialCoverReplicationInfo() { mixin(MGF!("mClientReceiveInitialCoverReplicationInfo", "Function Engine.CoverReplicator.ClientReceiveInitialCoverReplicationInfo")()); }
			ScriptFunction NotifyEnabledSlots() { mixin(MGF!("mNotifyEnabledSlots", "Function Engine.CoverReplicator.NotifyEnabledSlots")()); }
			ScriptFunction ServerSendEnabledSlots() { mixin(MGF!("mServerSendEnabledSlots", "Function Engine.CoverReplicator.ServerSendEnabledSlots")()); }
			ScriptFunction ClientReceiveEnabledSlots() { mixin(MGF!("mClientReceiveEnabledSlots", "Function Engine.CoverReplicator.ClientReceiveEnabledSlots")()); }
			ScriptFunction NotifyDisabledSlots() { mixin(MGF!("mNotifyDisabledSlots", "Function Engine.CoverReplicator.NotifyDisabledSlots")()); }
			ScriptFunction ServerSendDisabledSlots() { mixin(MGF!("mServerSendDisabledSlots", "Function Engine.CoverReplicator.ServerSendDisabledSlots")()); }
			ScriptFunction ClientReceiveDisabledSlots() { mixin(MGF!("mClientReceiveDisabledSlots", "Function Engine.CoverReplicator.ClientReceiveDisabledSlots")()); }
			ScriptFunction NotifyAutoAdjustSlots() { mixin(MGF!("mNotifyAutoAdjustSlots", "Function Engine.CoverReplicator.NotifyAutoAdjustSlots")()); }
			ScriptFunction ServerSendAdjustedSlots() { mixin(MGF!("mServerSendAdjustedSlots", "Function Engine.CoverReplicator.ServerSendAdjustedSlots")()); }
			ScriptFunction ClientReceiveAdjustedSlots() { mixin(MGF!("mClientReceiveAdjustedSlots", "Function Engine.CoverReplicator.ClientReceiveAdjustedSlots")()); }
			ScriptFunction NotifySetManualCoverTypeForSlots() { mixin(MGF!("mNotifySetManualCoverTypeForSlots", "Function Engine.CoverReplicator.NotifySetManualCoverTypeForSlots")()); }
			ScriptFunction ServerSendManualCoverTypeSlots() { mixin(MGF!("mServerSendManualCoverTypeSlots", "Function Engine.CoverReplicator.ServerSendManualCoverTypeSlots")()); }
			ScriptFunction ClientReceiveManualCoverTypeSlots() { mixin(MGF!("mClientReceiveManualCoverTypeSlots", "Function Engine.CoverReplicator.ClientReceiveManualCoverTypeSlots")()); }
			ScriptFunction NotifyLinkDisabledStateChange() { mixin(MGF!("mNotifyLinkDisabledStateChange", "Function Engine.CoverReplicator.NotifyLinkDisabledStateChange")()); }
			ScriptFunction ServerSendLinkDisabledState() { mixin(MGF!("mServerSendLinkDisabledState", "Function Engine.CoverReplicator.ServerSendLinkDisabledState")()); }
			ScriptFunction ClientReceiveLinkDisabledState() { mixin(MGF!("mClientReceiveLinkDisabledState", "Function Engine.CoverReplicator.ClientReceiveLinkDisabledState")()); }
		}
	}
	struct CoverReplicationInfo
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.CoverReplicator.CoverReplicationInfo")()); }
		@property final auto ref
		{
			ScriptArray!(ubyte) SlotsEnabled() { mixin(MGPS!("ScriptArray!(ubyte)", 4)()); }
			ScriptArray!(ubyte) SlotsDisabled() { mixin(MGPS!("ScriptArray!(ubyte)", 16)()); }
			ScriptArray!(ubyte) SlotsAdjusted() { mixin(MGPS!("ScriptArray!(ubyte)", 28)()); }
			ScriptArray!(CoverReplicator.ManualCoverTypeInfo) SlotsCoverTypeChanged() { mixin(MGPS!("ScriptArray!(CoverReplicator.ManualCoverTypeInfo)", 40)()); }
			CoverLink Link() { mixin(MGPS!("CoverLink", 0)()); }
		}
	}
	struct ManualCoverTypeInfo
	{
		private ubyte __buffer__[2];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.CoverReplicator.ManualCoverTypeInfo")()); }
		@property final auto ref
		{
			CoverLink.ECoverType ManualCoverType() { mixin(MGPS!("CoverLink.ECoverType", 1)()); }
			ubyte SlotIndex() { mixin(MGPS!("ubyte", 0)()); }
		}
	}
	@property final auto ref ScriptArray!(CoverReplicator.CoverReplicationInfo) CoverReplicationData() { mixin(MGPC!("ScriptArray!(CoverReplicator.CoverReplicationInfo)", 476)()); }
final:
	void PurgeOldEntries()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PurgeOldEntries, cast(void*)0, cast(void*)0);
	}
	void ReplicateInitialCoverInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicateInitialCoverInfo, cast(void*)0, cast(void*)0);
	}
	void ClientSetOwner(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetOwner, params.ptr, cast(void*)0);
	}
	void ServerSendInitialCoverReplicationInfo(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSendInitialCoverReplicationInfo, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceiveInitialCoverReplicationInfo, params.ptr, cast(void*)0);
	}
	void NotifyEnabledSlots(CoverLink Link, ref in ScriptArray!(int) SlotIndices)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(ScriptArray!(int)*)&params[4] = cast(ScriptArray!(int))SlotIndices;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyEnabledSlots, params.ptr, cast(void*)0);
	}
	void ServerSendEnabledSlots(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSendEnabledSlots, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceiveEnabledSlots, params.ptr, cast(void*)0);
	}
	void NotifyDisabledSlots(CoverLink Link, ref in ScriptArray!(int) SlotIndices)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(ScriptArray!(int)*)&params[4] = cast(ScriptArray!(int))SlotIndices;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyDisabledSlots, params.ptr, cast(void*)0);
	}
	void ServerSendDisabledSlots(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSendDisabledSlots, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceiveDisabledSlots, params.ptr, cast(void*)0);
	}
	void NotifyAutoAdjustSlots(CoverLink Link, ref in ScriptArray!(int) SlotIndices)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(ScriptArray!(int)*)&params[4] = cast(ScriptArray!(int))SlotIndices;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyAutoAdjustSlots, params.ptr, cast(void*)0);
	}
	void ServerSendAdjustedSlots(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSendAdjustedSlots, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceiveAdjustedSlots, params.ptr, cast(void*)0);
	}
	void NotifySetManualCoverTypeForSlots(CoverLink Link, ref in ScriptArray!(int) SlotIndices, CoverLink.ECoverType NewCoverType)
	{
		ubyte params[17];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(ScriptArray!(int)*)&params[4] = cast(ScriptArray!(int))SlotIndices;
		*cast(CoverLink.ECoverType*)&params[16] = NewCoverType;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifySetManualCoverTypeForSlots, params.ptr, cast(void*)0);
	}
	void ServerSendManualCoverTypeSlots(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSendManualCoverTypeSlots, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceiveManualCoverTypeSlots, params.ptr, cast(void*)0);
	}
	void NotifyLinkDisabledStateChange(CoverLink Link)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLinkDisabledStateChange, params.ptr, cast(void*)0);
	}
	void ServerSendLinkDisabledState(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSendLinkDisabledState, params.ptr, cast(void*)0);
	}
	void ClientReceiveLinkDisabledState(int Index, CoverLink Link, bool bLinkDisabled)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(CoverLink*)&params[4] = Link;
		*cast(bool*)&params[8] = bLinkDisabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceiveLinkDisabledState, params.ptr, cast(void*)0);
	}
}
