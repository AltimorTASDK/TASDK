module UnrealScript.TribesGame.TrVGSNode_Warning;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Warning : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_Warning")); }
	private static __gshared TrVGSNode_Warning mDefaultProperties;
	@property final static TrVGSNode_Warning DefaultProperties() { mixin(MGDPC("TrVGSNode_Warning", "TrVGSNode_Warning TribesGame.Default__TrVGSNode_Warning")); }
}
