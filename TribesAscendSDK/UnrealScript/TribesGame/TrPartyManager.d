module UnrealScript.TribesGame.TrPartyManager;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrPartyManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPartyManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInParty;
			ScriptFunction mAmLeader;
			ScriptFunction mCanInvite;
			ScriptFunction mGetMemberCap;
			ScriptFunction mGetMemberCount;
			ScriptFunction mKick;
			ScriptFunction mSendInvite;
			ScriptFunction mGetMemberId;
			ScriptFunction mGetMemberName;
			ScriptFunction mActiveMember;
			ScriptFunction mLeave;
			ScriptFunction mAcceptInvite;
			ScriptFunction mGetLeaderName;
			ScriptFunction mInitialize;
			ScriptFunction mShowInvitation;
			ScriptFunction mInvitationPopup;
			ScriptFunction mInvitationComplete;
			ScriptFunction mOnUpdate;
			ScriptFunction mLeaveParty;
		}
		public @property static final
		{
			ScriptFunction InParty() { return mInParty ? mInParty : (mInParty = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.InParty")); }
			ScriptFunction AmLeader() { return mAmLeader ? mAmLeader : (mAmLeader = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.AmLeader")); }
			ScriptFunction CanInvite() { return mCanInvite ? mCanInvite : (mCanInvite = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.CanInvite")); }
			ScriptFunction GetMemberCap() { return mGetMemberCap ? mGetMemberCap : (mGetMemberCap = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.GetMemberCap")); }
			ScriptFunction GetMemberCount() { return mGetMemberCount ? mGetMemberCount : (mGetMemberCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.GetMemberCount")); }
			ScriptFunction Kick() { return mKick ? mKick : (mKick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.Kick")); }
			ScriptFunction SendInvite() { return mSendInvite ? mSendInvite : (mSendInvite = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.SendInvite")); }
			ScriptFunction GetMemberId() { return mGetMemberId ? mGetMemberId : (mGetMemberId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.GetMemberId")); }
			ScriptFunction GetMemberName() { return mGetMemberName ? mGetMemberName : (mGetMemberName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.GetMemberName")); }
			ScriptFunction ActiveMember() { return mActiveMember ? mActiveMember : (mActiveMember = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.ActiveMember")); }
			ScriptFunction Leave() { return mLeave ? mLeave : (mLeave = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.Leave")); }
			ScriptFunction AcceptInvite() { return mAcceptInvite ? mAcceptInvite : (mAcceptInvite = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.AcceptInvite")); }
			ScriptFunction GetLeaderName() { return mGetLeaderName ? mGetLeaderName : (mGetLeaderName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.GetLeaderName")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.Initialize")); }
			ScriptFunction ShowInvitation() { return mShowInvitation ? mShowInvitation : (mShowInvitation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.ShowInvitation")); }
			ScriptFunction InvitationPopup() { return mInvitationPopup ? mInvitationPopup : (mInvitationPopup = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.InvitationPopup")); }
			ScriptFunction InvitationComplete() { return mInvitationComplete ? mInvitationComplete : (mInvitationComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.InvitationComplete")); }
			ScriptFunction OnUpdate() { return mOnUpdate ? mOnUpdate : (mOnUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.OnUpdate")); }
			ScriptFunction LeaveParty() { return mLeaveParty ? mLeaveParty : (mLeaveParty = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPartyManager.LeaveParty")); }
		}
	}
	@property final
	{
		@property final auto ref ScriptString InvitingPlayer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
		bool bCreatedParty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bCreatedParty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
final:
	bool InParty()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InParty, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool AmLeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AmLeader, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanInvite()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanInvite, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetMemberCap()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMemberCap, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetMemberCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMemberCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool Kick(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.Kick, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool SendInvite(ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendInvite, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int GetMemberId(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMemberId, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	ScriptString GetMemberName(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMemberName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool ActiveMember(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActiveMember, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool Leave()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Leave, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool AcceptInvite()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptInvite, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetLeaderName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLeaderName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void ShowInvitation(ScriptString LeaderName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LeaderName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowInvitation, params.ptr, cast(void*)0);
	}
	void InvitationPopup(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.InvitationPopup, params.ptr, cast(void*)0);
	}
	void InvitationComplete(int Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.InvitationComplete, params.ptr, cast(void*)0);
	}
	void OnUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdate, cast(void*)0, cast(void*)0);
	}
	void LeaveParty(bool bHandle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHandle;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveParty, params.ptr, cast(void*)0);
	}
}
