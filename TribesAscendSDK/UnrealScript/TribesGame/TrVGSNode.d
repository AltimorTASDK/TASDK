module UnrealScript.TribesGame.TrVGSNode;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.TribesGame.TrPlayerInput;
import UnrealScript.Core.UObject;

extern(C++) interface TrVGSNode : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode")); }
	private static __gshared TrVGSNode mDefaultProperties;
	@property final static TrVGSNode DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode)("TrVGSNode TribesGame.Default__TrVGSNode")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mProcessKeyInput;
			ScriptFunction mVerifyVGSCommandEntry;
			ScriptFunction mVerifyVGSChild;
			ScriptFunction mGetGametypeSpecificCommands;
			ScriptFunction mGetGametypeSpecificChildrenNodes;
		}
		public @property static final
		{
			ScriptFunction ProcessKeyInput() { return mProcessKeyInput ? mProcessKeyInput : (mProcessKeyInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVGSNode.ProcessKeyInput")); }
			ScriptFunction VerifyVGSCommandEntry() { return mVerifyVGSCommandEntry ? mVerifyVGSCommandEntry : (mVerifyVGSCommandEntry = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVGSNode.VerifyVGSCommandEntry")); }
			ScriptFunction VerifyVGSChild() { return mVerifyVGSChild ? mVerifyVGSChild : (mVerifyVGSChild = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVGSNode.VerifyVGSChild")); }
			ScriptFunction GetGametypeSpecificCommands() { return mGetGametypeSpecificCommands ? mGetGametypeSpecificCommands : (mGetGametypeSpecificCommands = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVGSNode.GetGametypeSpecificCommands")); }
			ScriptFunction GetGametypeSpecificChildrenNodes() { return mGetGametypeSpecificChildrenNodes ? mGetGametypeSpecificChildrenNodes : (mGetGametypeSpecificChildrenNodes = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVGSNode.GetGametypeSpecificChildrenNodes")); }
		}
	}
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
	static ScriptClass ProcessKeyInput(ScriptName Key, TrPlayerInput pPlayerInput, ScriptClass GameClass)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(TrPlayerInput*)&params[8] = pPlayerInput;
		*cast(ScriptClass*)&params[12] = GameClass;
		StaticClass.ProcessEvent(Functions.ProcessKeyInput, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[16];
	}
	static bool VerifyVGSCommandEntry(TrVGSCommandList.VGSCommandType Command, ScriptClass GameClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrVGSCommandList.VGSCommandType*)params.ptr = Command;
		*cast(ScriptClass*)&params[4] = GameClass;
		StaticClass.ProcessEvent(Functions.VerifyVGSCommandEntry, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool VerifyVGSChild(ScriptClass VGSNodeClass, ScriptClass GameClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = VGSNodeClass;
		*cast(ScriptClass*)&params[4] = GameClass;
		StaticClass.ProcessEvent(Functions.VerifyVGSChild, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static void GetGametypeSpecificCommands(ScriptArray!(TrVGSCommandList.VGSCommandType)* outGametypeSpecificCommands, ScriptClass GameClass)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)params.ptr = *outGametypeSpecificCommands;
		*cast(ScriptClass*)&params[12] = GameClass;
		StaticClass.ProcessEvent(Functions.GetGametypeSpecificCommands, params.ptr, cast(void*)0);
		*outGametypeSpecificCommands = *cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)params.ptr;
	}
	static void GetGametypeSpecificChildrenNodes(ScriptArray!(ScriptClass)* outVGSNodeChildrenClasses, ScriptClass GameClass)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ScriptClass)*)params.ptr = *outVGSNodeChildrenClasses;
		*cast(ScriptClass*)&params[12] = GameClass;
		StaticClass.ProcessEvent(Functions.GetGametypeSpecificChildrenNodes, params.ptr, cast(void*)0);
		*outVGSNodeChildrenClasses = *cast(ScriptArray!(ScriptClass)*)params.ptr;
	}
}
