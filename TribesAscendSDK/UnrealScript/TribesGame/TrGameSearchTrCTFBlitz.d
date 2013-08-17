module UnrealScript.TribesGame.TrGameSearchTrCTFBlitz;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrCTFBlitz : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSearchTrCTFBlitz")); }
	private static __gshared TrGameSearchTrCTFBlitz mDefaultProperties;
	@property final static TrGameSearchTrCTFBlitz DefaultProperties() { mixin(MGDPC("TrGameSearchTrCTFBlitz", "TrGameSearchTrCTFBlitz TribesGame.Default__TrGameSearchTrCTFBlitz")); }
}
