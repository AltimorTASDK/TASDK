module UnrealScript.TribesGame.TrVGSNode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.TribesGame.TrPlayerInput;
import UnrealScript.Core.UObject;

extern(C++) interface TrVGSNode : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode")()); }
	private static __gshared TrVGSNode mDefaultProperties;
	@property final static TrVGSNode DefaultProperties() { mixin(MGDPC!(TrVGSNode, "TrVGSNode TribesGame.Default__TrVGSNode")()); }
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
			ScriptFunction ProcessKeyInput() { mixin(MGF!("mProcessKeyInput", "Function TribesGame.TrVGSNode.ProcessKeyInput")()); }
			ScriptFunction VerifyVGSCommandEntry() { mixin(MGF!("mVerifyVGSCommandEntry", "Function TribesGame.TrVGSNode.VerifyVGSCommandEntry")()); }
			ScriptFunction VerifyVGSChild() { mixin(MGF!("mVerifyVGSChild", "Function TribesGame.TrVGSNode.VerifyVGSChild")()); }
			ScriptFunction GetGametypeSpecificCommands() { mixin(MGF!("mGetGametypeSpecificCommands", "Function TribesGame.TrVGSNode.GetGametypeSpecificCommands")()); }
			ScriptFunction GetGametypeSpecificChildrenNodes() { mixin(MGF!("mGetGametypeSpecificChildrenNodes", "Function TribesGame.TrVGSNode.GetGametypeSpecificChildrenNodes")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString m_MenuString() { mixin(MGPC!(ScriptString, 68)()); }
			ScriptName m_KeyBind() { mixin(MGPC!(ScriptName, 60)()); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_Commands() { mixin(MGPC!(ScriptArray!(TrVGSCommandList.VGSCommandType), 92)()); }
			ScriptArray!(ScriptClass) m_Children() { mixin(MGPC!(ScriptArray!(ScriptClass), 80)()); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_IgnoreCTFCommand() { mixin(MGPC!(ScriptArray!(TrVGSCommandList.VGSCommandType), 104)()); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_IgnoreTeamRabbitCommand() { mixin(MGPC!(ScriptArray!(TrVGSCommandList.VGSCommandType), 116)()); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_IgnoreArenaCommand() { mixin(MGPC!(ScriptArray!(TrVGSCommandList.VGSCommandType), 128)()); }
			ScriptArray!(TrVGSCommandList.VGSCommandType) m_IgnoreCaHCommand() { mixin(MGPC!(ScriptArray!(TrVGSCommandList.VGSCommandType), 140)()); }
		}
		bool m_bDrawHeader() { mixin(MGBPC!(152, 0x10)()); }
		bool m_bDrawHeader(bool val) { mixin(MSBPC!(152, 0x10)()); }
		bool m_bIgnoreCaH() { mixin(MGBPC!(152, 0x8)()); }
		bool m_bIgnoreCaH(bool val) { mixin(MSBPC!(152, 0x8)()); }
		bool m_bIgnoreArena() { mixin(MGBPC!(152, 0x4)()); }
		bool m_bIgnoreArena(bool val) { mixin(MSBPC!(152, 0x4)()); }
		bool m_bIgnoreTeamRabbit() { mixin(MGBPC!(152, 0x2)()); }
		bool m_bIgnoreTeamRabbit(bool val) { mixin(MSBPC!(152, 0x2)()); }
		bool m_bIgnoreCTF() { mixin(MGBPC!(152, 0x1)()); }
		bool m_bIgnoreCTF(bool val) { mixin(MSBPC!(152, 0x1)()); }
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
	static void GetGametypeSpecificCommands(ref ScriptArray!(TrVGSCommandList.VGSCommandType) outGametypeSpecificCommands, ScriptClass GameClass)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)params.ptr = outGametypeSpecificCommands;
		*cast(ScriptClass*)&params[12] = GameClass;
		StaticClass.ProcessEvent(Functions.GetGametypeSpecificCommands, params.ptr, cast(void*)0);
		*outGametypeSpecificCommands = *cast(ScriptArray!(TrVGSCommandList.VGSCommandType)*)params.ptr;
	}
	static void GetGametypeSpecificChildrenNodes(ref ScriptArray!(ScriptClass) outVGSNodeChildrenClasses, ScriptClass GameClass)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ScriptClass)*)params.ptr = outVGSNodeChildrenClasses;
		*cast(ScriptClass*)&params[12] = GameClass;
		StaticClass.ProcessEvent(Functions.GetGametypeSpecificChildrenNodes, params.ptr, cast(void*)0);
		*outVGSNodeChildrenClasses = *cast(ScriptArray!(ScriptClass)*)params.ptr;
	}
}
