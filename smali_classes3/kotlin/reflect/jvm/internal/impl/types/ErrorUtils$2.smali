.class final Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeConstructorWithCustomDebugName(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$debugName:Ljava/lang/String;

.field final synthetic val$errorClass:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .locals 6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string v1, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq p0, v0, :cond_2

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2"

    aput-object v5, v3, v4

    goto :goto_2

    :cond_2
    const-string v5, "kotlinTypeRefiner"

    aput-object v5, v3, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v5, "getParameters"

    aput-object v5, v3, v4

    goto :goto_3

    :pswitch_0
    const-string v5, "refine"

    aput-object v5, v3, v4

    goto :goto_3

    :pswitch_1
    const-string v5, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2"

    aput-object v5, v3, v4

    goto :goto_3

    :pswitch_2
    const-string v5, "getBuiltIns"

    aput-object v5, v3, v4

    goto :goto_3

    :pswitch_3
    const-string v5, "getSupertypes"

    aput-object v5, v3, v4

    :goto_3
    if-eq p0, v0, :cond_3

    goto :goto_4

    :cond_3
    const-string v4, "refine"

    aput-object v4, v3, v2

    :goto_4
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->val$errorClass:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->val$debugName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 519
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->getInstance()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->$$$reportNull$$$0(I)V

    :cond_0
    return-object v0
.end method

.method public getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 513
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->val$errorClass:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 491
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->$$$reportNull$$$0(I)V

    :cond_0
    return-object v0
.end method

.method public getSupertypes()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 497
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->$$$reportNull$$$0(I)V

    :cond_0
    return-object v0
.end method

.method public isDenotable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 0
    .param p1    # Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->$$$reportNull$$$0(I)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$2;->val$debugName:Ljava/lang/String;

    return-object v0
.end method
