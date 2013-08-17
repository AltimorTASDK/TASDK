module UnrealScript.TribesGame.TrSeqAct_PlayVGSCommand;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_PlayVGSCommand : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSeqAct_PlayVGSCommand")); }
	private static __gshared TrSeqAct_PlayVGSCommand mDefaultProperties;
	@property final static TrSeqAct_PlayVGSCommand DefaultProperties() { mixin(MGDPC("TrSeqAct_PlayVGSCommand", "TrSeqAct_PlayVGSCommand TribesGame.Default__TrSeqAct_PlayVGSCommand")); }
	@property final auto ref
	{
		ScriptString CommandInstigatorName() { mixin(MGPC("ScriptString", 236)); }
		TrVGSCommandList.VGSCommandType VGSCommand() { mixin(MGPC("TrVGSCommandList.VGSCommandType", 232)); }
	}
}
