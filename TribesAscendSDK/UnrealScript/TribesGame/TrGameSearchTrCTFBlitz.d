module UnrealScript.TribesGame.TrGameSearchTrCTFBlitz;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrCTFBlitz : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrCTFBlitz")); }
	private static __gshared TrGameSearchTrCTFBlitz mDefaultProperties;
	@property final static TrGameSearchTrCTFBlitz DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrCTFBlitz)("TrGameSearchTrCTFBlitz TribesGame.Default__TrGameSearchTrCTFBlitz")); }
}
