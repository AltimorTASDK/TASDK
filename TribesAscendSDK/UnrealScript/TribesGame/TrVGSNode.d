module UnrealScript.TribesGame.TrVGSNode;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.TribesGame.TrPlayerInput;
import UnrealScript.Core.UObject;

extern(C++) interface TrVGSNode : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptString m_MenuString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
			ScriptName m_KeyBind() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_Commands() { return *cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)(cast(size_t)cast(void*)this + 92); }
			ScriptArray!(ScriptClass) m_Children() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 80); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_IgnoreCTFCommand() { return *cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)(cast(size_t)cast(void*)this + 104); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_IgnoreTeamRabbitCommand() { return *cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)(cast(size_t)cast(void*)this + 116); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_IgnoreArenaCommand() { return *cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)(cast(size_t)cast(void*)this + 128); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_IgnoreCaHCommand() { return *cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)(cast(size_t)cast(void*)this + 140); }
		}
		bool m_bDrawHeader() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x10) != 0; }
		bool m_bDrawHeader(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x10; } return val; }
		bool m_bIgnoreCaH() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x8) != 0; }
		bool m_bIgnoreCaH(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x8; } return val; }
		bool m_bIgnoreArena() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x4) != 0; }
		bool m_bIgnoreArena(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x4; } return val; }
		bool m_bIgnoreTeamRabbit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x2) != 0; }
		bool m_bIgnoreTeamRabbit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x2; } return val; }
		bool m_bIgnoreCTF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
		bool m_bIgnoreCTF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	}
final:
	ScriptClass ProcessKeyInput(ScriptName Key, TrPlayerInput pPlayerInput, ScriptClass GameClass)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(TrPlayerInput*)&params[8] = pPlayerInput;
		*cast(ScriptClass*)&params[12] = GameClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77960], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[16];
	}
	bool VerifyVGSCommandEntry(TrVGSCommandList.VGSCommandType Command, ScriptClass GameClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrVGSCommandList.VGSCommandType*)params.ptr = Command;
		*cast(ScriptClass*)&params[4] = GameClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77963], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool VerifyVGSChild(ScriptClass VGSNodeClass, ScriptClass GameClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = VGSNodeClass;
		*cast(ScriptClass*)&params[4] = GameClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115429], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void GetGametypeSpecificCommands(ScriptArray!(TrVGSCommandList.VGSCommandType)* outGametypeSpecificCommands, ScriptClass GameClass)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)params.ptr = *outGametypeSpecificCommands;
		*cast(ScriptClass*)&params[12] = GameClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115433], params.ptr, cast(void*)0);
		*outGametypeSpecificCommands = *cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)params.ptr;
	}
	void GetGametypeSpecificChildrenNodes(ScriptArray!(ScriptClass)* outVGSNodeChildrenClasses, ScriptClass GameClass)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ScriptClass)*)params.ptr = *outVGSNodeChildrenClasses;
		*cast(ScriptClass*)&params[12] = GameClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115438], params.ptr, cast(void*)0);
		*outVGSNodeChildrenClasses = *cast(ScriptArray!(ScriptClass)*)params.ptr;
	}
}
