(in-package "BOOT")
(setq |$globalExposureGroupAlist|
'(
;;define the groups |basic| |categories| |Hidden| |defaults|
(|basic|
  (|AlgebraicManipulations| . ALGMANIP)
  (|AlgebraicNumber| . AN)
  (|AlgFactor| . ALGFACT)
  (|AlgebraicMultFact| . ALGMFACT)
  (|AlgebraPackage| . ALGPKG)
  (|AlgebraGivenByStructuralConstants| . ALGSC)
  (|Any| . ANY)
  (|AnyFunctions1| . ANY1)
  (|ArrayStack| . ASTACK)
  (|AssociatedJordanAlgebra| . JORDAN)
  (|AssociatedLieAlgebra| . LIE)
  (|AttachPredicates| . PMPRED)
  (|BalancedBinaryTree| . BBTREE)
  (|BasicOperator| . BOP)
  (|BasicOperatorFunctions1| . BOP1)
  (|BinaryExpansion| . BINARY)
  (|BinaryFile| . BINFILE)
  (|BinarySearchTree| . BSTREE)
  (|BinaryTournament| . BTOURN)
  (|BinaryTree| . BTREE)
  (|Bits| . BITS)
  (|Boolean| . BOOLEAN)
  (|CardinalNumber| . CARD)
  (|CartesianTensor| . CARTEN)
  (|CartesianTensorFunctions2| . CARTEN2)
  (|Character| . CHAR)
  (|CharacterClass| . CCLASS)
  (|CharacteristicPolynomialPackage| . CHARPOL)
  (|CliffordAlgebra| . CLIF)
  (|Color| . COLOR)
  (|CommonDenominator| . CDEN)
  (|Commutator| . COMM)
  (|Complex| . COMPLEX)
  (|ComplexFunctions2| . COMPLEX2)
  (|ComplexRootPackage| . CMPLXRT)
  (|ComplexTrigonometricManipulations| . CTRIGMNP)
  (|ContinuedFraction| . CONTFRAC)
  (|CoordinateSystems| . COORDSYS)
  (|CRApackage| . CRAPACK)
  (|CycleIndicators| . CYCLES)
  (|Database| . DBASE)
  (|DataList| . DLIST)
  (|DecimalExpansion| . DECIMAL)
  (|DenavitHartenbergMatrix| . DHMATRIX)
  (|Dequeue| . DEQUEUE)
  (|DiophantineSolutionPackage| . DIOSP)
  (|DirectProductFunctions2| . DIRPROD2)
  (|DisplayPackage| . DISPLAY)
  (|Distribution| . DISTRO)
  (|DistributionContinuedFractionPackage| . DSTCFPG)
  (|DistributionFunctions2| . DISTRO2)
  (|DistributionPackage| . DISTEX)
  (|DistributionPolynomialPackage| . DISTPOL)
  (|DoubleFloat| . DFLOAT)
  (|DoubleFloatEllipticIntegrals| . ELIPIDF)
  (|DoubleFloatSpecialFunctions| . DFSFUN)
  (|DoubleFloatSpecialFunctions2| . DFSFUN2)
  (|DrawComplex| . DRAWCX)
  (|DrawNumericHack| . DRAWHACK)
  (|DrawOption| . DROPT)
  (|EigenPackage| . EP)
  (|ElementaryFunctionDefiniteIntegration| . DEFINTEF)
  (|ElementaryFunctionLODESolver| . LODEEF)
  (|ElementaryFunctionODESolver| . ODEEF)
  (|ElementaryFunctionSign| . SIGNEF)
  (|ElementaryFunctionStructurePackage| . EFSTRUC)
  (|Equation| . EQ)
  (|EquationFunctions2| . EQ2)
  (|ErrorFunctions| . ERROR)
  (|EuclideanGroebnerBasisPackage| . GBEUCLID)
  (|Exit| . EXIT)
  (|Expression| . EXPR)
  (|ExpressionFunctions2| . EXPR2)
  (|ExpressionSpaceFunctions2| . ES2)
  (|ExpressionSpaceODESolver| . EXPRODE)
  (|ExpressionToOpenMath| . OMEXPR)
  (|ExpressionToUnivariatePowerSeries| . EXPR2UPS)
  (|Factored| . FR)
  (|FactoredFunctions2| . FR2)
  (|File| . FILE)
  (|FileName| . FNAME)
  (|FiniteDivisorFunctions2| . FDIV2)
  (|FiniteField| . FF)
  (|FiniteFieldCyclicGroup| . FFCG)
  (|FiniteFieldPolynomialPackage2| . FFPOLY2)
  (|FiniteFieldNormalBasis| . FFNB)
  (|FiniteFieldHomomorphisms| . FFHOM)
  (|FiniteLinearAggregateFunctions2| . FLAGG2)
  (|FiniteLinearAggregateSort| . FLASORT)
  (|FiniteSetAggregateFunctions2| . FSAGG2)
  (|FlexibleArray| . FARRAY)
  (|Float| . FLOAT)
  (|FloatEllipticFunctions| . FELFUN)
  (|FloatLiouvilianFunctions| . FLIOUFUN)
  (|FloatingRealPackage| . FLOATRP)
  (|FloatingComplexPackage| . FLOATCP)
  (|FloatSpecialFunctions| . FSFUN)
  (|FourierSeries| . FSERIES)
  (|Fraction| . FRAC)
  (|FractionalIdealFunctions2| . FRIDEAL2)
  (|FractionFunctions2| . FRAC2)
  (|FreeModuleCoefficientFunctions2| . FMCF2)
  (|FreeModuleFunctions2| . FM2)
  (|FreeNilpotentLie| . FNLA)
  (|FullPartialFractionExpansion| . FPARFRAC)
  (|FunctionFieldCategoryFunctions2| . FFCAT2)
  (|FunctionSpaceAssertions| . PMASSFS)
  (|FunctionSpaceAttachPredicates| . PMPREDFS)
  (|FunctionSpaceComplexIntegration| . FSCINT)
  (|FunctionSpaceFunctions2| . FS2)
  (|FunctionSpaceIntegration| . FSINT)
  (|FunctionSpacePrimitiveElement| . FSPRMELT)
  (|FunctionSpaceSum| . SUMFS)
  (|GaussianFactorizationPackage| . GAUSSFAC)
  (|GeneralUnivariatePowerSeries| . GSERIES)
  (|GenerateUnivariatePowerSeries| . GENUPS)
  (|GnuDraw| . GDRAW)
  (|GraphicsDefaults| . GRDEF)
  (|GroebnerPackage| . GB)
  (|GroebnerFactorizationPackage| . GBF)
  (|Guess| . GUESS)
  (|GuessOption| . GOPT)
  (|GuessInteger| . GUESSINT)
  (|GuessPolynomial| . GUESSP)
  (|GuessPolynomialInteger| . GUESSPI)
  (|GuessFinite| . GUESSF)
  (|HallBasis| . HB)
  (|Heap| . HEAP)
  (|HexadecimalExpansion| . HEXADEC)
  (|IndexCard| . ICARD)
  (|IdealDecompositionPackage| . IDECOMP)
  (|InfiniteLambertProduct| . INFPROD0)
  (|InfiniteTuple| . ITUPLE)
  (|InfiniteTupleFunctions2| . ITFUN2)
  (|InfiniteTupleFunctions3| . ITFUN3)
  (|Infinity| . INFINITY)
  (|Integer| . INT)
  (|IntegerCombinatoricFunctions| . COMBINAT)
  (|IntegerLinearDependence| . ZLINDEP)
  (|IntegerNumberTheoryFunctions| . INTHEORY)
  (|IntegerPrimesPackage| . PRIMES)
  (|IntegerRetractions| . INTRET)
  (|IntegerRoots| . IROOT)
  (|IntegrationResultFunctions2| . IR2)
  (|IntegrationResultRFToFunction| . IRRF2F)
  (|IntegrationResultToFunction| . IR2F)
  (|Interval| . INTRVL)
  (|InventorDataSink| . IVDATA)
  (|InventorViewPort| . IVVIEW)
  (|InventorRenderPackage| . IVREND)
  (|InverseLaplaceTransform| . INVLAPLA)
  (|IrrRepSymNatPackage| . IRSN)
  (|JuliaSymbol| . JSYM)
  (|JuliaInt64| . JI64)
  (|JuliaInteger| . JINT)
  (|JuliaFractionInteger| . JFINT)
  (|JuliaComplexF64| . JCF64)
  (|JuliaComplexField| . JCF) 
  (|JuliaDrawFunctions| . JDRAW) 
  (|JuliaFloat64| . JF64)
  (|JuliaFloat64Matrix| . JF64MAT) 
  (|JuliaF64MatrixTranscendentalFunctions| . JF64MTF)
  (|JuliaFloat64Vector| . JF64VEC) 
  (|JuliaInt64Vector| . JI64VEC) 
  (|JuliaIntegerMod| . JZMOD) 
  (|JuliaFloat| . JFLOAT) 
  (|JuliaFloat64SpecialFunctions| . JF64SF)
  (|JuliaF64SquareMatrix| . JF64SMAT)
  (|JuliaGaloisField| . JGF) 
  (|JuliaPlotFunctions| . JPLOT)
  (|JuliaRealLinearAlgebra| . JRLA) 
  (|JuliaFPComplexBall| . JFPCB) 
  (|JuliaFPRealBall| . JFPRB) 
  (|JuliaMultivariatePolynomial| . JMP)
  (|JuliaRealField| . JRF) 
  (|JuliaString| . JSTR)
  (|JuliaUnivariatePolynomial| . JUP)
  (|JuliaUtilityFunctions| . JUF)
  (|KernelFunctions2| . KERNEL2)
  (|KeyedAccessFile| . KAFILE)
  (|LaplaceTransform| . LAPLACE)
  (|LazardMorenoSolvingPackage| . LAZM3PK)
  (|Library| . LIB)
  (|LieSquareMatrix| . LSQM)
  (|LinearOrdinaryDifferentialOperator| . LODO)
  (|LinearSystemMatrixPackage| . LSMP)
  (|LinearSystemMatrixPackage1| . LSMP1)
  (|LinearSystemPolynomialPackage| . LSPP)
  (|List| . LIST)
  (|ListFunctions2| . LIST2)
  (|ListFunctions3| . LIST3)
  (|ListToMap| . LIST2MAP)
  (|MakeFloatCompiledFunction| . MKFLCFN)
  (|MakeFunction| . MKFUNC)
  (|MakeRecord| . MKRECORD)
  (|MappingPackage1| . MAPPKG1)
  (|MappingPackage2| . MAPPKG2)
  (|MappingPackage3| . MAPPKG3)
  (|Matrix| . MATRIX)
  (|MatrixCategoryFunctions2| . MATCAT2)
  (|MatrixCommonDenominator| . MCDEN)
  (|MatrixLinearAlgebraFunctions| . MATLIN)
  (|MergeThing| . MTHING)
  (|ModuleOperator| . MODOP)
  (|MonoidRingFunctions2| . MRF2)
  (|MoreSystemCommands| . MSYSCMD)
  (|MPolyCatFunctions2| . MPC2)
  (|MPolyCatRationalFunctionFactorizer| . MPRFF)
  (|Multiset| . MSET)
  (|MultivariateFactorize| . MULTFACT)
  (|MultivariatePolynomial| . MPOLY)
  (|MultFiniteFactorize| . MFINFACT)
  (|NoneFunctions1| . NONE1)
  (|NonNegativeInteger| . NNI)
  (|NormalizationPackage| . NORMPK)
  (|NormInMonogenicAlgebra| . NORMMA)
  (|NumberTheoreticPolynomialFunctions| . NTPOLFN)
  (|Numeric| . NUMERIC)
  (|NumericalOrdinaryDifferentialEquations| . NUMODE)
  (|NumericalQuadrature| . NUMQUAD)
  (|NumericComplexEigenPackage| . NCEP)
  (|NumericRealEigenPackage| . NREP)
  (|NumericContinuedFraction| . NCNTFRAC)
  (|Octonion| . OCT)
  (|OctonionCategoryFunctions2| . OCTCT2)
  (|OneDimensionalArray| . ARRAY1)
  (|OneDimensionalArrayFunctions2| . ARRAY12)
  (|OnePointCompletion| . ONECOMP)
  (|OnePointCompletionFunctions2| . ONECOMP2)
  (|OpenMathConnection| . OMCONN)
  (|OpenMathDevice| . OMDEV)
  (|OpenMathEncoding| . OMENC)
  (|OpenMathError| . OMERR)
  (|OpenMathErrorKind| . OMERRK)
  (|OpenMathPackage| . OMPKG)
  (|OpenMathServerPackage| . OMSERVER)
  (|OperationsQuery| . OPQUERY)
  (|OrderedCompletion| . ORDCOMP)
  (|OrderedCompletionFunctions2| . ORDCOMP2)
  (|OrdinaryDifferentialRing| . ODR)
  (|OrdSetInts| . OSI)
  (|OrthogonalPolynomialFunctions| . ORTHPOL)
  (|OutputPackage| . OUT)
  (|PadeApproximantPackage| . PADEPAC)
  (|Palette| . PALETTE)
  (|PartialFraction| . PFR)
  (|PartialFractionPackage| . PFRPAC)
  (|ParametricPlaneCurve| . PARPCURV)
  (|ParametricComplexCurve| . PARCCURV)
  (|ParametricSpaceCurve| . PARSCURV)
  (|ParametricSurface| . PARSURF)
  (|ParametricPlaneCurveFunctions2| . PARPC2)
  (|ParametricSpaceCurveFunctions2| . PARSC2)
  (|ParametricSurfaceFunctions2| . PARSU2)
  (|PartitionsAndPermutations| . PARTPERM)
  (|PatternFunctions2| . PATTERN2)
  (|PatternMatch| . PATMATCH)
  (|PatternMatchAssertions| . PMASS)
  (|PatternMatchResultFunctions2| . PATRES2)
  (|PendantTree| . PENDTREE)
  (|Permanent| . PERMAN)
  (|PermutationGroupExamples| . PGE)
  (|PermutationGroup| . PERMGRP)
  (|Permutation| . PERM)
  (|PiDomain| . HACKPI)
  (|PiCoercions| . PICOERCE)
  (|PointFunctions2| . PTFUNC2)
  (|PolyGroebner| . PGROEB)
  (|Polynomial| . POLY)
  (|PolynomialAN2Expression| . PAN2EXPR)
  (|PolynomialFunctions2| . POLY2)
  (|PolynomialIdeal| . IDEAL)
  (|PolynomialToUnivariatePolynomial| . POLY2UP)
  (|PositiveInteger| . PI)
  (|PowerSeriesLimitPackage| . LIMITPS)
  (|PrimeField| . PF)
  (|PrimitiveArrayFunctions2| . PRIMARR2)
  (|PrintPackage| . PRINT)
  (|QuadraticForm| . QFORM)
  (|QuasiComponentPackage| . QCMPACK)
  (|Quaternion| . QUAT)
  (|QuaternionCategoryFunctions2| . QUATCT2)
  (|QueryEquation| . QEQUAT)
  (|Queue| . QUEUE)
  (|QuotientFieldCategoryFunctions2| . QFCAT2)
  (|RadicalEigenPackage| . REP)
  (|RadicalSolvePackage| . SOLVERAD)
  (|RadixExpansion| . RADIX)
  (|RadixUtilities| . RADUTIL)
  (|RandomNumberSource| . RANDSRC)
  (|RationalFunction| . RF)
  (|RationalFunctionDefiniteIntegration| . DEFINTRF)
  (|RationalFunctionFactor| . RFFACT)
  (|RationalFunctionFactorizer| . RFFACTOR)
  (|RationalFunctionIntegration| . INTRF)
  (|RationalFunctionLimitPackage| . LIMITRF)
  (|RationalFunctionSign| . SIGNRF)
  (|RationalFunctionSum| . SUMRF)
  (|RationalRetractions| . RATRET)
  (|RealClosure| . RECLOS)
  (|RealPolynomialUtilitiesPackage| . POLUTIL)
  (|RealZeroPackage| . REAL0)
  (|RealZeroPackageQ| . REAL0Q)
  (|RectangularMatrixCategoryFunctions2| . RMCAT2)
  (|RegularSetDecompositionPackage| . RSDCMPK)
  (|RegularTriangularSet| . REGSET)
  (|RegularTriangularSetGcdPackage| . RSETGCD)
  (|RepresentationPackage1| . REP1)
  (|RepresentationPackage2| . REP2)
  (|ResolveLatticeCompletion| . RESLATC)
  (|RewriteRule| . RULE)
  (|RightOpenIntervalRootCharacterization| . ROIRC)
  (|RomanNumeral| . ROMAN)
  (|Ruleset| . RULESET)
  (|Segment| . SEG)
  (|SegmentBinding| . SEGBIND)
  (|SegmentBindingFunctions2| . SEGBIND2)
  (|SegmentFunctions2| . SEG2)
  (|Sequence| . SEQU)
  (|SequenceFunctions2| . SEQU2)
  (|Set| . SET)
  (|SimplifyAlgebraicNumberConvertPackage| . SIMPAN)
  (|SingleInteger| . SINT)
  (|SmithNormalForm| . SMITH)
  (|SparseUnivariatePolynomialFunctions2| . SUP2)
  (|SpecialOutputPackage| . SPECOUT)
  (|SquareFreeRegularSetDecompositionPackage| . SRDCMPK)
  (|SquareFreeRegularTriangularSet| . SREGSET)
  (|SquareFreeRegularTriangularSetGcdPackage| . SFRGCD)
  (|SquareFreeQuasiComponentPackage| . SFQCMPK)
  (|Stack| . STACK)
  (|STransformPackage| . STRANS)
  (|Stream| . STREAM)
  (|StreamFunctions1| . STREAM1)
  (|StreamFunctions2| . STREAM2)
  (|StreamFunctions3| . STREAM3)
  (|String| . STRING)
  (|SturmHabichtPackage| . SHP)
  (|Symbol| . SYMBOL)
  (|SymmetricGroupCombinatoricFunctions| . SGCF)
  (|SystemSolvePackage| . SYSSOLP)
  (|Tableau| . TABLEAU)
  (|TaylorSeries| . TS)
  (|TexFormat1| . TEX1)
  (|TextFile| . TEXTFILE)
  (|ThreeDimensionalViewport| . VIEW3D)
  (|ThreeSpace| . SPACE3)
  (|Timer|  . TIMER)
  (|TopLevelDrawFunctions| . DRAW)
  (|TopLevelDrawFunctionsForAlgebraicCurves| . DRAWCURV)
  (|TopLevelDrawFunctionsForCompiledFunctions| . DRAWCFUN)
  (|TopLevelDrawFunctionsForPoints| .  DRAWPT )
  (|TopLevelThreeSpace| . TOPSP)
  (|TranscendentalManipulations| . TRMANIP)
  (|TransSolvePackage| . SOLVETRA)
  (|Tree| . TREE)
  (|TrigonometricManipulations| . TRIGMNIP)
  (|UnivariateLaurentSeriesFunctions2| . ULS2)
  (|UnivariatePolynomial| . UP)
  (|UnivariatePolynomialCategoryFunctions2| . UPOLYC2)
  (|UnivariatePolynomialCommonDenominator| . UPCDEN)
  (|UnivariatePolynomialDecompositionPackage| . UPDECOMP)
  (|UnivariatePolynomialFunctions2| . UP2)
  (|UnivariatePolynomialMultiplicationPackage| . UPMP)
  (|UnivariatePuiseuxSeriesFunctions2| . UPXS2)
  (|UnivariateTaylorSeriesFunctions2| . UTS2)
  (|UniversalSegment| . UNISEG)
  (|UniversalSegmentFunctions2| . UNISEG2)
  (|UserDefinedVariableOrdering| . UDVO)
  (|Vector| . VECTOR)
  (|VectorFunctions2| . VECTOR2)
  (|ViewDefaultsPackage| . VIEWDEF)
  (|Void| . VOID)
  (|WuWenTsunTriangularSet| . WUTSET)
  (|ZeroDimensionalSolvePackage| . ZDSOLVE)
)
(|categories|
  (|AbelianGroup| . ABELGRP)
  (|AbelianMonoid| . ABELMON)
  (|AbelianMonoidRing| . AMR)
  (|AbelianSemiGroup| . ABELSG)
  (|Aggregate| . AGG)
  (|Algebra| . ALGEBRA)
  (|AlgebraicallyClosedField| . ACF)
  (|AlgebraicallyClosedFunctionSpace| . ACFS)
  (|ArcHyperbolicFunctionCategory| . AHYP)
  (|ArcTrigonometricFunctionCategory| . ATRIG)
  (|AssociationListAggregate| . ALAGG)
  (|BagAggregate| . BGAGG)
  (|BasicType| . BASTYPE)
  (|Bialgebra| . BIALG)
  (|BiModule| . BMODULE)
  (|BinaryRecursiveAggregate| . BRAGG)
  (|BinaryTreeCategory| . BTCAT)
  (|BitAggregate| . BTAGG)
  (|CachableSet| . CACHSET)
  (|CancellationAbelianMonoid| . CABMON)
  (|CharacteristicNonZero| . CHARNZ)
  (|CharacteristicZero| . CHARZ)
  (|Coalgebra| . COALG)
  (|CoercibleTo| . KOERCE)
  (|Collection| . CLAGG)
  (|CombinatorialFunctionCategory| . CFCAT)
  (|CombinatorialOpsCategory| . COMBOPC)
  (|CommutativeRing| . COMRING)
  (|ComplexCategory| . COMPCAT)
  (|ConvertibleTo| . KONVERT)
  (|DequeueAggregate| . DQAGG)
  (|Dictionary| . DIAGG)
  (|DictionaryOperations| . DIOPS)
  (|DifferentialExtension| . DIFEXT)
  (|DifferentialPolynomialCategory| . DPOLCAT)
  (|DifferentialRing| . DIFRING)
  (|DifferentialVariableCategory| . DVARCAT)
  (|DirectProductCategory| . DIRPCAT)
  (|DivisionRing| . DIVRING)
  (|DoublyLinkedAggregate| . DLAGG)
  (|ElementaryFunctionCategory| . ELEMFUN)
  (|Eltable| . ELTAB)
  (|EltableAggregate| . ELTAGG)
  (|EntireRing| . ENTIRER)
  (|EuclideanDomain| . EUCDOM)
  (|Evalable| . EVALAB)
  (|ExpressionSpace| . ES)
  (|ExtensibleLinearAggregate| . ELAGG)
  (|ExtensionField| . XF)
  (|Field| . FIELD)
  (|FieldOfPrimeCharacteristic| . FPC)
  (|Finite| . FINITE)
  (|FileCategory| . FILECAT)
  (|FileNameCategory| . FNCAT)
  (|FiniteAbelianMonoidRing| . FAMR)
  (|FiniteAlgebraicExtensionField| . FAXF)
  (|FiniteDivisorCategory| . FDIVCAT)
  (|FiniteFieldCategory| . FFIELDC)
  (|FiniteLinearAggregate| . FLAGG)
  (|FiniteRankNonAssociativeAlgebra| . FINAALG)
  (|FiniteRankAlgebra| . FINRALG)
  (|FiniteSetAggregate| . FSAGG)
  (|FloatingPointSystem| . FPS)
  (|FramedAlgebra| . FRAMALG)
  (|FramedNonAssociativeAlgebra| . FRNAALG)
  (|FramedNonAssociativeAlgebraFunctions2| . FRNAAF2)
  (|FreeLieAlgebra| . FLALG)
  (|FreeModuleCategory| . FMCAT)
  (|FullyEvalableOver| . FEVALAB)
  (|FullyLinearlyExplicitOver| . FLINEXP)
  (|FullyPatternMatchable| . FPATMAB)
  (|FullyRetractableTo| . FRETRCT)
  (|FunctionFieldCategory| . FFCAT)
  (|FunctionSpace| . FS)
  (|GcdDomain| . GCDDOM)
  (|GradedAlgebra| . GRALG)
  (|GradedModule| . GRMOD)
  (|Group| . GROUP)
  (|HomogeneousAggregate| . HOAGG)
  (|HopfAlgebra| . HOPFALG)
  (|HyperbolicFunctionCategory| . HYPCAT)
  (|IndexedAggregate| . IXAGG)
  (|IndexedDirectProductCategory| . IDPC)
  (|InnerEvalable| . IEVALAB)
  (|IntegerNumberSystem| . INS)
  (|IntegralDomain| . INTDOM)
  (|IntervalCategory| . INTCAT)
  (|JuliaMatrixCategory| . JMATCAT)
  (|JuliaType| . JTYPE)
  (|JuliaRing| . JRING)
  (|JuliaVectorCategory| . JVECCAT)
  (|KeyedDictionary| . KDAGG)
  (|LazyStreamAggregate| . LZSTAGG)
  (|LeftAlgebra| . LALG)
  (|LeftModule| . LMODULE)
  (|LieAlgebra| . LIECAT)
  (|LinearAggregate| . LNAGG)
  (|LinearlyExplicitOver| . LINEXP)
  (|LinearOrdinaryDifferentialOperatorCategory| . LODOCAT)
  (|LiouvillianFunctionCategory| . LFCAT)
  (|ListAggregate| . LSAGG)
  (|Logic| . LOGIC)
  (|Magma| . MAGMA)
  (|MagmaWithUnit| . MAGMAWU)
  (|MatrixCategory| . MATCAT)
  (|Module| . MODULE)
  (|Monoid| . MONOID)
  (|MonoidRingCategory| . MRCAT)
  (|MonogenicAlgebra| . MONOGEN)
  (|MultiDictionary| . MDAGG)
  (|MultisetAggregate| . MSETAGG)
  (|MultivariateTaylorSeriesCategory| . MTSCAT)
  (|NonAssociativeAlgebra| . NAALG)
  (|NonAssociativeRing| . NASRING)
  (|NonAssociativeRng| . NARNG)
  (|NormalizedTriangularSetCategory| . NTSCAT)
  (|OctonionCategory| . OC)
  (|OneDimensionalArrayAggregate| . A1AGG)
  (|OpenMath| . OM)
  (|OrderedAbelianGroup| . OAGROUP)
  (|OrderedAbelianMonoid| . OAMON)
  (|OrderedAbelianMonoidSup| . OAMONS)
  (|OrderedAbelianSemiGroup| . OASGP)
  (|OrderedCancellationAbelianMonoid| . OCAMON)
  (|OrderedFinite| . ORDFIN)
  (|OrderedIntegralDomain| . OINTDOM)
  (|OrderedMonoid| . ORDMON)
  (|OrderedMultisetAggregate| . OMSAGG)
  (|OrderedRing| . ORDRING)
  (|OrderedSet| . ORDSET)
  (|PAdicIntegerCategory| . PADICCT)
  (|PartialDifferentialRing| . PDRING)
  (|PartialOrder| . PORDER)
  (|PartialTranscendentalFunctions| . PTRANFN)
  (|Patternable| . PATAB)
  (|PatternMatchable| . PATMAB)
  (|PermutationCategory| . PERMCAT)
  (|PlottablePlaneCurveCategory| . PPCURVE)
  (|PlottableSpaceCurveCategory| . PSCURVE)
  (|PointCategory| . PTCAT)
  (|PolynomialCategory| . POLYCAT)
  (|PolynomialFactorizationExplicit| . PFECAT)
  (|PolynomialSetCategory| . PSETCAT)
  (|PowerSeriesCategory| . PSCAT)
  (|PrimitiveFunctionCategory| . PRIMCAT)
  (|PrincipalIdealDomain| . PID)
  (|PriorityQueueAggregate| . PRQAGG)
  (|QuaternionCategory| . QUATCAT)
  (|QueueAggregate| . QUAGG)
  (|QuotientFieldCategory| . QFCAT)
  (|RadicalCategory| . RADCAT)
  (|RealClosedField| . RCFIELD)
  (|RealConstant| . REAL)
  (|RealNumberSystem| . RNS)
  (|RealRootCharacterizationCategory| . RRCC)
  (|RectangularMatrixCategory| . RMATCAT)
  (|RecursiveAggregate| . RCAGG)
  (|RecursivePolynomialCategory| . RPOLCAT)
  (|RegularChain| . RGCHAIN)
  (|RegularTriangularSetCategory| . RSETCAT)
  (|RetractableTo| . RETRACT)
  (|RightModule| . RMODULE)
  (|Ring| . RING)
  (|Rng| . RNG)
  (|SegmentCategory| . SEGCAT)
  (|SegmentExpansionCategory| . SEGXCAT)
  (|SemiGroup| . SGROUP)
  (|SetAggregate| . SETAGG)
  (|SetCategory| . SETCAT)
  (|SExpressionCategory| . SEXCAT)
  (|SpecialFunctionCategory| . SPFCAT)
  (|SquareFreeNormalizedTriangularSetCategory| . SNTSCAT)
  (|SquareFreeRegularTriangularSetCategory| . SFRTCAT)
  (|SquareMatrixCategory| . SMATCAT)
  (|StackAggregate| . SKAGG)
  (|StepThrough| . STEP)
  (|StreamAggregate| . STAGG)
  (|StringAggregate| . SRAGG)
  (|StringCategory| . STRICAT)
  (|StructuralConstantsPackage| . SCPKG)
  (|TableAggregate| . TBAGG)
  (|TensorPowerCategory| . TENSPC)
  (|TensorProductCategory| . TENSCAT)
  (|TensorProductProperty| . TENSPRP)
  (|ThreeSpaceCategory| . SPACEC)
  (|TranscendentalFunctionCategory| . TRANFUN)
  (|TriangularSetCategory| . TSETCAT)
  (|TrigonometricFunctionCategory| . TRIGCAT)
  (|TwoDimensionalArrayCategory| . ARR2CAT)
  (|Type| . TYPE)
  (|UnaryRecursiveAggregate| . URAGG)
  (|UniqueFactorizationDomain| . UFD)
  (|UnivariateLaurentSeriesCategory| . ULSCAT)
  (|UnivariateLaurentSeriesConstructorCategory| . ULSCCAT)
  (|UnivariatePolynomialCategory| . UPOLYC)
  (|UnivariatePowerSeriesCategory| . UPSCAT)
  (|UnivariatePuiseuxSeriesCategory| . UPXSCAT)
  (|UnivariatePuiseuxSeriesConstructorCategory| . UPXSCCA)
  (|UnivariateSkewPolynomialCategory| . OREPCAT)
  (|UnivariateTaylorSeriesCategory| . UTSCAT)
  (|VectorCategory| . VECTCAT)
  (|XAlgebra| . XALG)
  (|XFreeAlgebra| . XFALG)
  (|XPolynomialsCat| . XPOLYC)
)
(|Hidden|
  (|AlgebraicFunction| . AF)
  (|AlgebraicFunctionField| . ALGFF)
  (|AlgebraicHermiteIntegration| . INTHERAL)
  (|AlgebraicIntegrate| . INTALG)
  (|AlgebraicIntegration| . INTAF)
  (|AnonymousFunction| . ANON)
  (|AntiSymm| . ANTISYM)
  (|ApplyRules| . APPRULE)
  (|ApplyUnivariateSkewPolynomial| . APPLYORE)
  (|ArrayStack| . ASTACK)
  (|AssociatedEquations| . ASSOCEQ)
  (|AssociationList| . ALIST)
  (|Automorphism| . AUTOMOR)
  (|BalancedFactorisation| . BALFACT)
  (|BalancedPAdicInteger| . BPADIC)
  (|BalancedPAdicRational| . BPADICRT)
  (|BezoutMatrix| . BEZOUT)
  (|BoundIntegerRoots| . BOUNDZRO)
  (|BrillhartTests| . BRILL)
  (|ChangeOfVariable| . CHVAR)
  (|CharacteristicPolynomialInMonogenicalAlgebra| . CPIMA)
  (|ChineseRemainderToolsForIntegralBases| . IBACHIN)
  (|CoerceVectorMatrixPackage| . CVMP)
  (|CombinatorialFunction| . COMBF)
  (|CommonOperators| . COMMONOP)
  (|CommuteUnivariatePolynomialCategory| . COMMUPC)
  (|ComplexIntegerSolveLinearPolynomialEquation| . CINTSLPE)
  (|ComplexPattern| . COMPLPAT)
  (|ComplexPatternMatch| . CPMATCH)
  (|ComplexRootFindingPackage| . CRFP)
  (|ConstantLODE| . ODECONST)
  (|CyclicStreamTools| . CSTTOOLS)
  (|DefiniteIntegrationTools| . DFINTTLS)
  (|DegreeReductionPackage| . DEGRED)
  (|DeRhamComplex| . DERHAM)
  (|DifferentialSparseMultivariatePolynomial| . DSMP)
  (|DirectProduct| . DIRPROD)
  (|DirectProductMatrixModule| . DPMM)
  (|DirectProductModule| . DPMO)
  (|DiscreteLogarithmPackage| . DLP)
  (|DistributedMultivariatePolynomial| . DMP)
  (|DoubleResultantPackage| . DBLRESP)
  (|DrawOptionFunctions0| . DROPT0)
  (|DrawOptionFunctions1| . DROPT1)
  (|ElementaryFunction| . EF)
  (|ElementaryFunctionsUnivariateLaurentSeries| . EFULS)
  (|ElementaryFunctionsUnivariatePuiseuxSeries| . EFUPXS)
  (|ElementaryIntegration| . INTEF)
  (|EllipticFunctionsUnivariateTaylorSeries| . ELFUTS)
  (|EqTable| . EQTBL)
  (|EuclideanModularRing| . EMR)
  (|EvaluateCycleIndicators| . EVALCYC)
  (|ExponentialExpansion| . EXPEXPAN)
  (|ExponentialOfUnivariatePuiseuxSeries| . EXPUPXS)
  (|ExpressionSpaceFunctions1| . ES1)
  (|ExpressionTubePlot| . EXPRTUBE)
  (|ExtAlgBasis| . EAB)
  (|FactoredFunctions| . FACTFUNC)
  (|FactoredFunctionUtilities| . FRUTIL)
  (|FactoringUtilities| . FACUTIL)
  (|FGLMIfCanPackage| . FGLMICPK)
  (|FindOrderFinite| . FORDER)
  (|FiniteDivisor| . FDIV)
  (|FiniteFieldCyclicGroupExtension| . FFCGX)
  (|FiniteFieldCyclicGroupExtensionByPolynomial| . FFCGP)
  (|FiniteFieldExtension| . FFX)
  (|FiniteFieldExtensionByPolynomial| . FFP)
  (|FiniteFieldFunctions| . FFF)
  (|FiniteFieldNormalBasisExtension| . FFNBX)
  (|FiniteFieldNormalBasisExtensionByPolynomial| . FFNBP)
  (|FiniteFieldPolynomialPackage| . FFPOLY)
  (|FiniteFieldSolveLinearPolynomialEquation| . FFSLPE)
  (|FormalFraction| . FORMAL)
  (|FourierComponent| . FCOMP)
  (|FractionalIdeal| . FRIDEAL)
  (|FreeGroup| . FGROUP)
  (|FreeModule| . FM)
  (|FreeMonoid| . FMONOID)
  (|FunctionalSpecialFunction| . FSPECF)
  (|FunctionCalled| . FUNCTION)
  (|FunctionFieldIntegralBasis| . FFINTBAS)
  (|FunctionSpaceReduce| . FSRED)
  (|FunctionSpaceToUnivariatePowerSeries| . FS2UPS)
  (|FunctionSpaceToExponentialExpansion| . FS2EXPXP)
  (|GaloisGroupFactorizationUtilities| . GALFACTU)
  (|GaloisGroupFactorizer| . GALFACT)
  (|GaloisGroupPolynomialUtilities| . GALPOLYU)
  (|GaloisGroupUtilities| . GALUTIL)
  (|GeneralHenselPackage| . GHENSEL)
  (|GeneralDistributedMultivariatePolynomial| . GDMP)
  (|GeneralPolynomialGcdPackage| . GENPGCD)
  (|GeneralSparseTable| . GSTBL)
  (|GenericNonAssociativeAlgebra| . GCNAALG)
  (|GenExEuclid| . GENEEZ)
  (|GeneralizedMultivariateFactorize| . GENMFACT)
  (|GeneralModulePolynomial| . GMODPOL)
  (|GeneralPolynomialSet| . GPOLSET)
  (|GeneralQuaternion| . QUAT2)
  (|GeneralTriangularSet| . GTSET)
  (|GenusZeroIntegration| . INTG0)
  (|GosperSummationMethod| . GOSPER)
  (|GraphImage| . GRIMAGE)
  (|GrayCode| . GRAY)
  (|GroebnerInternalPackage| . GBINTERN)
  (|GroebnerSolve| . GROEBSOL)
  (|HashTable| . HASHTBL)
  (|Heap| . HEAP)
  (|HeuGcd| . HEUGCD)
  (|HomogeneousDistributedMultivariatePolynomial| . HDMP)
  (|HyperellipticFiniteDivisor| . HELLFDIV)
  (|IncrementingMaps| . INCRMAPS)
  (|IndexedBits| . IBITS)
  (|IndexedDirectProductObject| . IDPO)
  (|IndexedExponents| . INDE)
  (|IndexedFlexibleArray| . IFARRAY)
  (|IndexedList| . ILIST)
  (|IndexedMatrix| . IMATRIX)
  (|IndexedOneDimensionalArray| . IARRAY1)
  (|IndexedString| . ISTRING)
  (|IndexedTwoDimensionalArray| . IARRAY2)
  (|IndexedVector| . IVECTOR)
  (|InnerAlgFactor| . IALGFACT)
  (|InnerCommonDenominator| . ICDEN)
  (|InnerFiniteField| . IFF)
  (|InnerIndexedTwoDimensionalArray| . IIARRAY2)
  (|InnerMatrixLinearAlgebraFunctions| . IMATLIN)
  (|InnerMatrixQuotientFieldFunctions| . IMATQF)
  (|InnerModularGcd| . INMODGCD)
  (|InnerMultFact| . INNMFACT)
  (|InnerNormalBasisFieldFunctions| . INBFF)
  (|InnerNumericEigenPackage| . INEP)
  (|InnerNumericFloatSolvePackage| . INFSP)
  (|InnerPAdicInteger| . IPADIC)
  (|InnerPolySign| . INPSIGN)
  (|InnerPolySum| . ISUMP)
  (|InnerPrimeField| . IPF)
  (|InnerSparseUnivariatePowerSeries| . ISUPS)
  (|InnerTable| . INTABL)
  (|InnerTaylorSeries| . ITAYLOR)
  (|InnerTrigonometricManipulations| . ITRIGMNP)
  (|InputForm| . INFORM)
  (|InputFormFunctions1| . INFORM1)
  (|IntegerBits| . INTBIT)
  (|IntegerFactorizationPackage| . INTFACT)
  (|IntegerMod| . ZMOD)
  (|IntegerSolveLinearPolynomialEquation| . INTSLPE)
  (|IntegralBasisPolynomialTools| . IBPTOOLS)
  (|IntegralBasisTools| . IBATOOL)
  (|IntegrationResult| . IR)
  (|IntegrationTools| . INTTOOLS)
  (|InternalPrintPackage| . IPRNTPK)
  (|InternalRationalUnivariateRepresentationPackage| . IRURPK)
  (|JuliaComplexF64Matrix| . JCF64MAT)
  (|JuliaComplexF64MatrixTranscendentalFunctions| . JCF64MTF)
  (|JuliaComplexF64SquareMatrix| . JCF64SMA)
  (|JuliaComplexF64Vector| . JCF64VEC)
  (|JuliaComplexLinearAlgebra| . JCLA)
  (|JuliaFloat64SpecialFunctions2| . JF64SF2)
  (|Kernel| . KERNEL)
  (|Kovacic| . KOVACIC)
  (|LaurentPolynomial| . LAUPOL)
  (|LeadingCoefDetermination| . LEADCDET)
  (|LexTriangularPackage| . LEXTRIPK)
  (|LieExponentials| . LEXP)
  (|LiePolynomial| . LPOLY)
  (|LinearDependence| . LINDEP)
  (|LinearOrdinaryDifferentialOperatorFactorizer| . LODOF)
  (|LinearOrdinaryDifferentialOperator1| . LODO1)
  (|LinearOrdinaryDifferentialOperator2| . LODO2)
  (|LinearOrdinaryDifferentialOperatorsOps| . LODOOPS)
  (|LinearPolynomialEquationByFractions| . LPEFRAC)
  (|LinGroebnerPackage| . LGROBP)
  (|LiouvillianFunction| . LF)
  (|ListMonoidOps| . LMOPS)
  (|ListMultiDictionary| . LMDICT)
  (|LocalAlgebra| . LA)
  (|Localize| . LO)
  (|LyndonWord| . LWORD)
  (|MakeBinaryCompiledFunction| . MKBCFUNC)
  (|MakeCachableSet| . MKCHSET)
  (|MakeUnaryCompiledFunction| . MKUCFUNC)
  (|MappingPackageInternalHacks1| . MAPHACK1)
  (|MappingPackageInternalHacks2| . MAPHACK2)
  (|MappingPackageInternalHacks3| . MAPHACK3)
  (|MeshCreationRoutinesForThreeDimensions| . MESH)
  (|ModMonic| . MODMON)
  (|ModularField| . MODFIELD)
  (|ModularHermitianRowReduction| . MHROWRED)
  (|ModularRing| . MODRING)
  (|ModuleMonomial| . MODMONOM)
  (|MoebiusTransform| . MOEBIUS)
  (|MonoidRing| . MRING)
  (|MonomialExtensionTools| . MONOTOOL)
  (|MPolyCatPolyFactorizer| . MPCPF)
  (|MPolyCatFunctions3| . MPC3)
  (|MRationalFactorize| . MRATFAC)
  (|MultipleMap| . MMAP)
  (|MultivariateLifting| . MLIFT)
  (|MultivariateSquareFree| . MULTSQFR)
  (|HomogeneousDirectProduct| . HDP)
  (|NewSparseMultivariatePolynomial| . NSMP)
  (|NewSparseUnivariatePolynomial| . NSUP)
  (|NewSparseUnivariatePolynomialFunctions2| . NSUP2)
  (|None| . NONE)
  (|NonLinearFirstOrderODESolver| . NODE1)
  (|NonLinearSolvePackage| . NLINSOL)
  (|NormRetractPackage| . NORMRETR)
  (|NPCoef| . NPCOEF)
;;  (|NumberFormats| . NUMFMT)
  (|NumberFieldIntegralBasis| . NFINTBAS)
  (|NumericTubePlot| . NUMTUBE)
  (|ODEIntegration| . ODEINT)
  (|ODETools| . ODETOOLS)
  (|Operator| . OP)
  (|OrderedDirectProduct| . ODP)
  (|OrderedVariableList| . OVAR)
  (|OrderingFunctions| . ORDFUNS)
  (|OrderlyDifferentialPolynomial| . ODPOL)
  (|OrderlyDifferentialVariable| . ODVAR)
  (|OrdinaryWeightedPolynomials| . OWP)
  (|OutputForm| . OUTFORM)
  (|PadeApproximants| . PADE)
  (|PAdicInteger| . PADIC)
  (|PAdicRational| . PADICRAT)
  (|PAdicRationalConstructor| . PADICRC)
  (|PAdicWildFunctionFieldIntegralBasis| . PWFFINTB)
  (|ParadoxicalCombinatorsForStreams| . YSTREAM)
  (|ParametricLinearEquations| . PLEQN)
  (|Partition| . PRTITION)
  (|Pattern| . PATTERN)
  (|PatternFunctions1| . PATTERN1)
  (|PatternMatchFunctionSpace| . PMFS)
  (|PatternMatchIntegerNumberSystem| . PMINS)
  (|PatternMatchIntegration| . INTPM)
  (|PatternMatchKernel| . PMKERNEL)
  (|PatternMatchListAggregate| . PMLSAGG)
  (|PatternMatchListResult| . PATLRES)
  (|PatternMatchPolynomialCategory| . PMPLCAT)
  (|PatternMatchPushDown| . PMDOWN)
  (|PatternMatchQuotientFieldCategory| . PMQFCAT)
  (|PatternMatchResult| . PATRES)
  (|PatternMatchSymbol| . PMSYM)
  (|PatternMatchTools| . PMTOOLS)
  (|PlaneAlgebraicCurvePlot| . ACPLOT)
  (|Plot| . PLOT)
  (|PlotFunctions1| . PLOT1)
  (|PlotTools| . PLOTTOOL)
  (|Plot3D| . PLOT3D)
  (|PoincareBirkhoffWittLyndonBasis| . PBWLB)
  (|Point| . POINT)
  (|PointsOfFiniteOrder| . PFO)
  (|PointsOfFiniteOrderRational| . PFOQ)
  (|PointsOfFiniteOrderTools| . PFOTOOLS)
  (|PointPackage| . PTPACK)
  (|PolToPol| . POLTOPOL)
  (|PolynomialCategoryLifting| . POLYLIFT)
  (|PolynomialCategoryQuotientFunctions| . POLYCATQ)
  (|PolynomialFactorizationByRecursion| . PFBR)
  (|PolynomialGcdPackage| . PGCD)
  (|PolynomialInterpolation| . PINTERP)
  (|PolynomialInterpolationAlgorithms| . PINTERPA)
  (|PolynomialNumberTheoryFunctions| . PNTHEORY)
  (|PolynomialRing| . PR)
  (|PolynomialRoots| . POLYROOT)
  (|PolynomialSetUtilitiesPackage| . PSETPK)
  (|PolynomialSolveByFormulas| . SOLVEFOR)
  (|PolynomialSquareFree| . PSQFR)
  (|PrecomputedAssociatedEquations| . PREASSOC)
  (|PrimitiveArray| . PRIMARR)
  (|PrimitiveElement| . PRIMELT)
  (|PrimitiveRatDE| . ODEPRIM)
  (|PrimitiveRatRicDE| . ODEPRRIC)
  (|Product| . PRODUCT)
  (|PseudoRemainderSequence| . PRS)
  (|PseudoLinearNormalForm| . PSEUDLIN)
  (|PureAlgebraicIntegration| . INTPAF)
  (|PureAlgebraicLODE| . ODEPAL)
  (|PushVariables| . PUSHVAR)
  (|QuasiAlgebraicSet| . QALGSET)
  (|QuasiAlgebraicSet2| . QALGSET2)
  (|RadicalFunctionField| . RADFF)
  (|RandomDistributions| . RDIST)
  (|RandomFloatDistributions| . RFDIST)
  (|RandomIntegerDistributions| . RIDIST)
  (|RationalFactorize| . RATFACT)
  (|RationalIntegration| . INTRAT)
  (|RationalInterpolation| . RINTERP)
  (|RationalLODE| . ODERAT)
  (|RationalRicDE| . ODERTRIC)
  (|RationalUnivariateRepresentationPackage| . RURPK)
  (|RealSolvePackage| . REALSOLV)
  (|RectangularMatrix| . RMATRIX)
  (|ReducedDivisor| . RDIV)
  (|ReduceLODE| . ODERED)
  (|ReductionOfOrder| . REDORDER)
  (|Reference| . REF)
  (|RepeatedDoubling| . REPDB)
  (|RepeatedSquaring| . REPSQ)
  (|ResidueRing| . RESRING)
  (|RetractSolvePackage| . RETSOL)
  (|RuleCalled| . RULECOLD)
  (|SetOfMIntegersInOneToN| . SETMN)
  (|SExpression| . SEX)
  (|SExpressionOf| . SEXOF)
  (|SequentialDifferentialPolynomial| . SDPOL)
  (|SequentialDifferentialVariable| . SDVAR)
  (|SimpleAlgebraicExtension| . SAE)
  (|SingletonAsOrderedSet| . SAOS)
  (|SortedCache| . SCACHE)
  (|SortPackage| . SORTPAK)
  (|SparseMultivariatePolynomial| . SMP)
  (|SparseMultivariateTaylorSeries| . SMTS)
  (|SparseTable| . STBL)
  (|SparseUnivariatePolynomial| . SUP)
  (|SparseUnivariateSkewPolynomial| . ORESUP)
  (|SparseUnivariateLaurentSeries| . SULS)
  (|SparseUnivariatePuiseuxSeries| . SUPXS)
  (|SparseUnivariateTaylorSeries| . SUTS)
  (|SplitHomogeneousDirectProduct| . SHDP)
  (|SplittingNode| . SPLNODE)
  (|SplittingTree| . SPLTREE)
  (|SquareMatrix| . SQMATRIX)
  (|Stack| . STACK)
  (|StorageEfficientMatrixOperations| . MATSTOR)
  (|StreamTaylorSeriesOperations| . STTAYLOR)
  (|StreamTranscendentalFunctions| . STTF)
  (|StreamTranscendentalFunctionsNonCommutative| . STTFNC)
  (|StringTable| . STRTBL)
  (|SubResultantPackage| . SUBRESP)
  (|SubSpace| . SUBSPACE)
  (|SubSpaceComponentProperty| . COMPPROP)
  (|SuchThat| . SUCH)
  (|SymmetricFunctions| . SYMFUNC)
  (|SymmetricPolynomial| . SYMPOLY)
  (|SystemODESolver| . ODESYS)
  (|Table| . TABLE)
  (|TableauxBumpers| . TABLBUMP)
  (|TabulatedComputationPackage| . TBCMPPK)
  (|TangentExpansions| . TANEXP)
  (|TensorProduct| . TENSOR)
  (|TensorPower| . TENSPOW)
  (|TensorPowerFunctions2| . TENSPO2)
  (|ToolsForSign| . TOOLSIGN)
  (|TranscendentalHermiteIntegration| . INTHERTR)
  (|TranscendentalIntegration| . INTTR)
  (|TransSolvePackageService| . SOLVESER)
  (|TriangularMatrixOperations| . TRIMAT)
  (|TubePlot| . TUBE)
  (|TubePlotTools| . TUBETOOL)
  (|Tuple| . TUPLE)
  (|TwoDimensionalArray| . ARRAY2)
  (|TwoDimensionalPlotClipping| . CLIP)
  (|TwoDimensionalViewport| . VIEW2D)
  (|TwoFactorize| . TWOFACT)
  (|Unittest| . TESTUNIT)
  (|UnittestAux| . TESTAUX)
  (|UnittestCount| . TESTCNT)
  (|UnivariateLaurentSeries| . ULS)
  (|UnivariateLaurentSeriesConstructor| . ULSCONS)
  (|UnivariatePolynomialDivisionPackage| . UPDIVP)
  (|UnivariatePolynomialSquareFree| . UPSQFREE)
  (|UnivariatePuiseuxSeries| . UPXS)
  (|UnivariatePuiseuxSeriesConstructor| . UPXSCONS)
  (|UnivariatePuiseuxSeriesWithExponentialSingularity| . UPXSSING)
  (|UnivariateSkewPolynomial| . OREUP)
  (|UnivariateSkewPolynomialCategoryOps| . OREPCTO)
  (|UnivariateTaylorSeries| . UTS)
  (|UnivariateTaylorSeriesODESolver| . UTSODE)
  (|UserDefinedPartialOrdering| . UDPO)
  (|UTSodetools| . UTSODETL)
  (|Variable| . VARIABLE)
  (|ViewportPackage| . VIEW)
  (|WeierstrassPreparation| . WEIER)
  (|WeightedPolynomials| . WP)
  (|WildFunctionFieldIntegralBasis| . WFFINTBS)
  (|XDistributedPolynomial| . XDPOLY)
  (|XExponentialPackage| . XEXPPKG)
  (|XPBWPolynomial| . XPBWPOLY)
  (|XPolynomial| . XPOLY)
  (|XPolynomialRing| . XPR)
  (|XRecursivePolynomial| . XRPOLY))
(|defaults|
  (|AbelianGroup&| . ABELGRP-)
  (|AbelianMonoid&| . ABELMON-)
  (|AbelianMonoidRing&| . AMR-)
  (|AbelianSemiGroup&| . ABELSG-)
  (|Aggregate&| . AGG-)
  (|Algebra&| . ALGEBRA-)
  (|AlgebraicallyClosedField&| . ACF-)
  (|AlgebraicallyClosedFunctionSpace&| . ACFS-)
  (|ArcTrigonometricFunctionCategory&| . ATRIG-)
  (|BagAggregate&| . BGAGG-)
  (|BasicType&| . BASTYPE-)
  (|BinaryRecursiveAggregate&| . BRAGG-)
  (|BinaryTreeCategory&| . BTCAT-)
  (|BitAggregate&| . BTAGG-)
  (|Collection&| . CLAGG-)
  (|ComplexCategory&| . COMPCAT-)
  (|Dictionary&| . DIAGG-)
  (|DictionaryOperations&| . DIOPS-)
  (|DifferentialExtension&| . DIFEXT-)
  (|DifferentialPolynomialCategory&| . DPOLCAT-)
  (|DifferentialRing&| . DIFRING-)
  (|DifferentialVariableCategory&| . DVARCAT-)
  (|DirectProductCategory&| . DIRPCAT-)
  (|DivisionRing&| . DIVRING-)
  (|ElementaryFunctionCategory&| . ELEMFUN-)
  (|EltableAggregate&| . ELTAGG-)
  (|EuclideanDomain&| . EUCDOM-)
  (|Evalable&| . EVALAB-)
  (|ExpressionSpace&| . ES-)
  (|ExtensibleLinearAggregate&| . ELAGG-)
  (|ExtensionField&| . XF-)
  (|Field&| . FIELD-)
  (|FieldOfPrimeCharacteristic&| . FPC-)
  (|FiniteAbelianMonoidRing&| . FAMR-)
  (|FiniteAlgebraicExtensionField&| . FAXF-)
  (|FiniteDivisorCategory&| . FDIVCAT-)
  (|FiniteFieldCategory&| . FFIELDC-)
  (|FiniteLinearAggregate&| . FLAGG-)
  (|FiniteSetAggregate&| . FSAGG-)
  (|FiniteRankAlgebra&| . FINRALG-)
  (|FiniteRankNonAssociativeAlgebra&| . FINAALG-)
  (|FloatingPointSystem&| . FPS-)
  (|FramedAlgebra&| . FRAMALG-)
  (|FramedNonAssociativeAlgebra&| . FRNAALG-)
  (|FullyEvalableOver&| . FEVALAB-)
  (|FullyLinearlyExplicitOver&| . FLINEXP-)
  (|FullyRetractableTo&| . FRETRCT-)
  (|FunctionFieldCategory&| . FFCAT-)
  (|FunctionSpace&| . FS-)
  (|GcdDomain&| . GCDDOM-)
  (|GradedAlgebra&| . GRALG-)
  (|GradedModule&| . GRMOD-)
  (|Group&| . GROUP-)
  (|HomogeneousAggregate&| . HOAGG-)
  (|HyperbolicFunctionCategory&| . HYPCAT-)
  (|IndexedAggregate&| . IXAGG-)
  (|InnerEvalable&| . IEVALAB-)
  (|IntegerNumberSystem&| . INS-)
  (|IntegralDomain&| . INTDOM-)
  (|JuliaAlgebraicNumber| . JAN)
  (|JuliaMultivariatePolynomial&| . JMP-)
  (|KeyedDictionary&| . KDAGG-)
  (|LazyStreamAggregate&| . LZSTAGG-)
  (|LeftAlgebra&| . LALG-)
  (|LieAlgebra&| . LIECAT-)
  (|LinearAggregate&| . LNAGG-)
  (|ListAggregate&| . LSAGG-)
  (|Logic&| . LOGIC-)
  (|LinearOrdinaryDifferentialOperatorCategory&| . LODOCAT-)
  (|Magma&| . MAGMA-)
  (|MagmaWithUnit&| . MAGMAWU-)
  (|MatrixCategory&| . MATCAT-)
  (|Module&| . MODULE-)
  (|MonogenicAlgebra&| . MONOGEN-)
  (|NonAssociativeAlgebra&| . NAALG-)
  (|NonAssociativeRing&| . NASRING-)
  (|NonAssociativeRng&| . NARNG-)
  (|OctonionCategory&| . OC-)
  (|OneDimensionalArrayAggregate&| . A1AGG-)
  (|OrderedRing&| . ORDRING-)
  (|OrderedSet&| . ORDSET-)
  (|PartialDifferentialRing&| . PDRING-)
  (|PolynomialCategory&| . POLYCAT-)
  (|PolynomialFactorizationExplicit&| . PFECAT-)
  (|PolynomialSetCategory&| . PSETCAT-)
  (|PowerSeriesCategory&| . PSCAT-)
  (|QuaternionCategory&| . QUATCAT-)
  (|QuotientFieldCategory&| . QFCAT-)
  (|RadicalCategory&| . RADCAT-)
  (|RealClosedField&| . RCFIELD-)
  (|RealNumberSystem&| . RNS-)
  (|RealRootCharacterizationCategory&| . RRCC-)
  (|RectangularMatrixCategory&| . RMATCAT-)
  (|RecursiveAggregate&| . RCAGG-)
  (|RecursivePolynomialCategory&| . RPOLCAT-)
  (|RegularTriangularSetCategory&| . RSETCAT-)
  (|RetractableTo&| . RETRACT-)
  (|SetAggregate&| . SETAGG-)
  (|SetCategory&| . SETCAT-)
  (|SquareMatrixCategory&| . SMATCAT-)
  (|StreamAggregate&| . STAGG-)
  (|StringAggregate&| . SRAGG-)
  (|TableAggregate&| . TBAGG-)
  (|TranscendentalFunctionCategory&| . TRANFUN-)
  (|TriangularSetCategory&| . TSETCAT-)
  (|TrigonometricFunctionCategory&| . TRIGCAT-)
  (|TwoDimensionalArrayCategory&| . ARR2CAT-)
  (|UnaryRecursiveAggregate&| . URAGG-)
  (|UniqueFactorizationDomain&| . UFD-)
  (|UnivariateLaurentSeriesConstructorCategory&| . ULSCCAT-)
  (|UnivariatePolynomialCategory&| . UPOLYC-)
  (|UnivariatePowerSeriesCategory&| . UPSCAT-)
  (|UnivariatePuiseuxSeriesConstructorCategory&| . UPXSCCA-)
  (|UnivariateSkewPolynomialCategory&| . OREPCAT-)
  (|UnivariateTaylorSeriesCategory&| . UTSCAT-)
  (|VectorCategory&| . VECTCAT-)
  ))
)
(setq |$localExposureDataDefault| (VECTOR
(LIST
;;These groups will be exposed
'|basic|
'|categories|
)
(LIST
;;These constructors will be explicitly exposed
)
(LIST
;;These constructors will be explicitly hidden
)
))
(setq |$localExposureData|  (copy-seq |$localExposureDataDefault|))
