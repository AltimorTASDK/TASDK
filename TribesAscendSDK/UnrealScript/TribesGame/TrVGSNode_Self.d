module UnrealScript.TribesGame.TrVGSNode_Self;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Self : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_Self")); }
	private static __gshared TrVGSNode_Self mDefaultProperties;
	@property final static TrVGSNode_Self DefaultProperties() { mixin(MGDPC("TrVGSNode_Self", "TrVGSNode_Self TribesGame.Default__TrVGSNode_Self")); }
}
