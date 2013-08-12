module UnrealScript.TribesGame.TrGameSearchTrCTFBlitz;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrCTFBlitz : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrCTFBlitz")); }
}
