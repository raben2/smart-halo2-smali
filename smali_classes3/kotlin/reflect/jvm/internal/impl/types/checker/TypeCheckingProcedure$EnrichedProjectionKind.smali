.class public final enum Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
.super Ljava/lang/Enum;
.source "TypeCheckingProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnrichedProjectionKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

.field public static final enum IN:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

.field public static final enum INV:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

.field public static final enum OUT:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

.field public static final enum STAR:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .locals 5

    packed-switch p0, :pswitch_data_0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_0
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const/4 v2, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v4, "variance"

    aput-object v4, v2, v3

    goto :goto_2

    :pswitch_2
    const-string v4, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind"

    aput-object v4, v2, v3

    :goto_2
    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_3

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind"

    aput-object v4, v2, v3

    goto :goto_3

    :pswitch_3
    const-string v4, "fromVariance"

    aput-object v4, v2, v3

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "fromVariance"

    aput-object v3, v2, v1

    :pswitch_4
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 130
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->IN:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const-string v1, "OUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->OUT:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const-string v1, "INV"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->INV:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const-string v1, "STAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->STAR:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const/4 v0, 0x4

    .line 129
    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->IN:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->OUT:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    aput-object v1, v0, v3

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->INV:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    aput-object v1, v0, v4

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->STAR:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    aput-object v1, v0, v5

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromVariance(Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
    .locals 1
    .param p0    # Lkotlin/reflect/jvm/internal/impl/types/Variance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->$$$reportNull$$$0(I)V

    .line 134
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$1;->$SwitchMap$org$jetbrains$kotlin$types$Variance:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 142
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown variance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :pswitch_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->OUT:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    if-nez p0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->$$$reportNull$$$0(I)V

    :cond_1
    return-object p0

    .line 138
    :pswitch_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->IN:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    if-nez p0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->$$$reportNull$$$0(I)V

    :cond_2
    return-object p0

    .line 136
    :pswitch_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->INV:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    if-nez p0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->$$$reportNull$$$0(I)V

    :cond_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
    .locals 1

    .line 129
    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
    .locals 1

    .line 129
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    return-object v0
.end method
