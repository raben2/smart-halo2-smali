.class public final synthetic Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->values()[Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->IN:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->values()[Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
