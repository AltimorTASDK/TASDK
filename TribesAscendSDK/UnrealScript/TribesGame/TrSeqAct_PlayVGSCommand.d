module UnrealScript.TribesGame.TrSeqAct_PlayVGSCommand;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_PlayVGSCommand : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqAct_PlayVGSCommand")); }
	private static __gshared TrSeqAct_PlayVGSCommand mDefaultProperties;
	@property final static TrSeqAct_PlayVGSCommand DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSeqAct_PlayVGSCommand)("TrSeqAct_PlayVGSCommand TribesGame.Default__TrSeqAct_PlayVGSCommand")); }
	@property final auto ref
	{
		ScriptString CommandInstigatorName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
		TrVGSCommandList.VGSCommandType VGSCommand() { return *cast(TrVGSCommandList.VGSCommandType*)(cast(size_t)cast(void*)this + 232); }
	}
}
