module UnrealScript.TribesGame.TrPartyManager;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrPartyManager : UObject
{
	public @property final bool bCreatedParty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bCreatedParty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	public @property final auto ref ScriptString InvitingPlayer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
	final bool InParty()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54628], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool AmLeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54630], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CanInvite()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59813], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetMemberCap()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59815], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetMemberCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59817], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool Kick(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59853], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool SendInvite(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59878], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final int GetMemberId(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59908], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final ScriptString GetMemberName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59925], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final bool ActiveMember(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59927], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool Leave()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100577], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool AcceptInvite()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100582], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ScriptString GetLeaderName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100584], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100587], cast(void*)0, cast(void*)0);
	}
	final void ShowInvitation(ScriptString LeaderName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LeaderName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100588], params.ptr, cast(void*)0);
	}
	final void InvitationPopup(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100590], params.ptr, cast(void*)0);
	}
	final void InvitationComplete(int Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100595], params.ptr, cast(void*)0);
	}
	final void OnUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100597], cast(void*)0, cast(void*)0);
	}
	final void LeaveParty(bool bHandle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHandle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100598], params.ptr, cast(void*)0);
	}
}
