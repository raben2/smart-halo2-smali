.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;
.super Ljava/lang/Object;
.source "predefinedEnhancementInfo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\npredefinedEnhancementInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 predefinedEnhancementInfo.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/PredefinedEnhancementInfoKt\n+ 2 methodSignatureBuilding.kt\norg/jetbrains/kotlin/load/kotlin/MethodSignatureBuildingKt\n+ 3 predefinedEnhancementInfo.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/SignatureEnhancementBuilder\n*L\n1#1,254:1\n201#1:256\n23#2:255\n207#3:257\n207#3:258\n207#3:259\n207#3:260\n207#3:261\n207#3:262\n207#3:263\n207#3:264\n207#3:265\n207#3:266\n207#3:267\n207#3:268\n207#3:269\n207#3:270\n*E\n*S KotlinDebug\n*F\n+ 1 predefinedEnhancementInfo.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/PredefinedEnhancementInfoKt\n*L\n41#1:256\n41#1:255\n41#1:257\n41#1:258\n41#1:259\n41#1:260\n41#1:261\n41#1:262\n41#1:263\n41#1:264\n41#1:265\n41#1:266\n41#1:267\n41#1:268\n41#1:269\n41#1:270\n*E\n"
.end annotation


# static fields
.field private static final NOT_NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field private static final NOT_PLATFORM:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field private static final NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field private static final PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 34
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 36
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_PLATFORM:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 38
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 255
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const-string v1, "Object"

    .line 42
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Predicate"

    .line 43
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Function"

    .line 44
    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Consumer"

    .line 45
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiFunction"

    .line 46
    invoke-virtual {v0, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiConsumer"

    .line 47
    invoke-virtual {v0, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnaryOperator"

    .line 48
    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stream/Stream"

    .line 49
    invoke-virtual {v0, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v8, "Optional"

    .line 50
    invoke-virtual {v0, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;

    invoke-direct {v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;-><init>()V

    const-string v8, "Iterator"

    .line 53
    invoke-virtual {v0, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 257
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v13, v14, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v12, "forEachRemaining"

    .line 54
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$1;

    move-object/from16 v8, v20

    move-object v9, v0

    move-object v10, v4

    move-object v11, v2

    move-object/from16 v21, v2

    move-object v2, v12

    move-object/from16 v12, v19

    move-object/from16 v22, v4

    move-object v4, v13

    move-object v13, v7

    move-object/from16 v23, v7

    move-object v7, v14

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    move-object/from16 v18, v24

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "Iterable"

    .line 58
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v4, v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v2, "spliterator"

    .line 59
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$2;

    move-object/from16 v8, v20

    move-object/from16 v10, v22

    move-object/from16 v11, v21

    move-object/from16 v13, v23

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$2;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "Collection"

    .line 63
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v4, v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v2, "removeIf"

    .line 64
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$3;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$3;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "stream"

    .line 68
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$4;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$4;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "parallelStream"

    .line 71
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$5;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$5;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "List"

    .line 75
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v4, v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v2, "replaceAll"

    .line 76
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$6;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$6;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "Map"

    .line 80
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v4, v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v2, "forEach"

    .line 81
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$7;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$7;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "putIfAbsent"

    .line 84
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$8;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$8;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "replace"

    .line 89
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$9;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$9;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "replace"

    .line 95
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$10;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$10;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "replaceAll"

    .line 101
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$11;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$11;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "compute"

    .line 104
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$12;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$12;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "computeIfAbsent"

    .line 111
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$13;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$13;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "computeIfPresent"

    .line 116
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$14;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$14;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "merge"

    .line 121
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$15;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$15;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 262
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    move-object/from16 v4, v24

    invoke-direct {v2, v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v15, "empty"

    .line 129
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$16;

    move-object/from16 v8, v20

    move-object/from16 v24, v7

    move-object v7, v15

    move-object v15, v1

    move-object/from16 v18, v4

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$16;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v7, "of"

    .line 132
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$17;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$17;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v7, "ofNullable"

    .line 136
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$18;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$18;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v7, "get"

    .line 140
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$19;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$19;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v7, "ifPresent"

    .line 143
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$20;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$20;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "ref/Reference"

    .line 148
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    move-object/from16 v15, v24

    invoke-direct {v7, v15, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v2, "get"

    .line 149
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$21;

    move-object/from16 v8, v20

    move-object/from16 v24, v6

    move-object v6, v15

    move-object v15, v1

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$21;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 264
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    move-object/from16 v7, v21

    invoke-direct {v2, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v15, "test"

    .line 155
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$22;

    move-object/from16 v8, v20

    move-object v11, v7

    move-object/from16 v14, v24

    move-object v7, v15

    move-object v15, v1

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$22;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "BiPredicate"

    .line 160
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v7, v6, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v2, "test"

    .line 161
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$23;

    move-object/from16 v8, v20

    move-object/from16 v11, v21

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$23;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 266
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    move-object/from16 v7, v22

    invoke-direct {v2, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v15, "accept"

    .line 168
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$24;

    move-object/from16 v8, v20

    move-object v10, v7

    move-object v7, v15

    move-object v15, v1

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$24;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 267
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    move-object/from16 v7, v24

    invoke-direct {v2, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v15, "accept"

    .line 173
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$25;

    move-object/from16 v8, v20

    move-object/from16 v10, v22

    move-object v14, v7

    move-object v7, v15

    move-object v15, v1

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$25;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 268
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v2, v6, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v7, "apply"

    .line 179
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$26;

    move-object/from16 v8, v20

    move-object/from16 v14, v24

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$26;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 269
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v2, v6, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v7, "apply"

    .line 185
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$27;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$27;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "Supplier"

    .line 191
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->javaFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;

    invoke-direct {v7, v6, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;Ljava/lang/String;)V

    const-string v2, "get"

    .line 192
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$28;

    move-object/from16 v8, v20

    invoke-direct/range {v8 .. v18}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$$special$$inlined$enhancement$lambda$28;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder$ClassEnhancementBuilder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 256
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancementBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 255
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getNOT_NULLABLE$p()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    return-object v0
.end method

.method public static final synthetic access$getNOT_PLATFORM$p()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_PLATFORM:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    return-object v0
.end method

.method public static final synthetic access$getNULLABLE$p()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    return-object v0
.end method

.method public static final getPREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/Map;

    return-object v0
.end method
