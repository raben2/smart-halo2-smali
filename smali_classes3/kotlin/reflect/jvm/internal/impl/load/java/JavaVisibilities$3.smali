.class final Lkotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "JavaVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .locals 6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v5, "what"

    aput-object v5, v3, v4

    goto :goto_2

    :pswitch_0
    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3"

    aput-object v5, v3, v4

    goto :goto_2

    :pswitch_1
    const-string v5, "visibility"

    aput-object v5, v3, v4

    goto :goto_2

    :pswitch_2
    const-string v5, "from"

    aput-object v5, v3, v4

    :goto_2
    const/4 v4, 0x1

    if-eq p0, v0, :cond_2

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3"

    aput-object v5, v3, v4

    goto :goto_3

    :cond_2
    const-string v5, "normalize"

    aput-object v5, v3, v4

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v4, "isVisible"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_3
    const-string v4, "compareTo"

    aput-object v4, v3, v2

    :goto_4
    :pswitch_4
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected compareTo(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3;->$$$reportNull$$$0(I)V

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 119
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->INTERNAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, -0x1

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getInternalDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "protected/*protected and package*/"

    return-object v0
.end method

.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z
    .locals 1
    .param p1    # Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3;->$$$reportNull$$$0(I)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3;->$$$reportNull$$$0(I)V

    .line 108
    :cond_1
    invoke-static {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities;->access$100(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p1

    return p1
.end method

.method public normalize()Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 139
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    if-nez v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3;->$$$reportNull$$$0(I)V

    :cond_0
    return-object v0
.end method
