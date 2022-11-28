.class public abstract Lcom/google/android/libraries/places/internal/hg;
.super Lcom/google/android/libraries/places/internal/gz;
.source "PG"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/gz<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient a:Lcom/google/android/libraries/places/internal/ha;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation build Lcom/google/j2objc/annotations/RetainedWith;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/gz;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 6

    const/4 v0, 0x2

    .line 36
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_1

    add-int/lit8 v1, p0, -0x1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string p0, "collection too large"

    .line 42
    invoke-static {v0, p0}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/Object;)V

    return v1
.end method

.method private static varargs a(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/hg;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/hg<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 7
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hg;->a(I)I

    move-result v1

    .line 8
    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_1

    .line 5
    :pswitch_0
    aget-object p0, p1, v0

    .line 6
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hg;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/hg;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/google/android/libraries/places/internal/hs;->a:Lcom/google/android/libraries/places/internal/hs;

    return-object p0

    :goto_1
    if-ge v2, p0, :cond_2

    .line 13
    aget-object v3, p1, v2

    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 15
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/go;->b(I)I

    move-result v9

    :goto_2
    and-int v10, v9, v6

    .line 17
    aget-object v11, v5, v10

    if-nez v11, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 19
    aput-object v3, p1, v7

    .line 20
    aput-object v3, v5, v10

    add-int/2addr v4, v8

    move v7, v9

    goto :goto_3

    .line 23
    :cond_0
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 26
    invoke-static {p1, v7, p0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 p0, 0x1

    if-ne v7, p0, :cond_3

    .line 28
    aget-object p0, p1, v0

    .line 29
    new-instance p1, Lcom/google/android/libraries/places/internal/ht;

    invoke-direct {p1, p0, v4}, Lcom/google/android/libraries/places/internal/ht;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 30
    :cond_3
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/hg;->a(I)I

    move-result p0

    div-int/lit8 v1, v1, 0x2

    if-ge p0, v1, :cond_4

    move p0, v7

    goto :goto_0

    .line 32
    :cond_4
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v7, v0, :cond_5

    .line 34
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5
    move-object v3, p1

    .line 35
    new-instance p0, Lcom/google/android/libraries/places/internal/hs;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/hs;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/hg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/libraries/places/internal/hg<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/ht;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/ht;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/hg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/android/libraries/places/internal/hg<",
            "TE;>;"
        }
    .end annotation

    .line 44
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 48
    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/google/android/libraries/places/internal/hg;->a(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/hg;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    .line 47
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hg;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/hg;

    move-result-object p0

    return-object p0

    .line 45
    :pswitch_1
    sget-object p0, Lcom/google/android/libraries/places/internal/hs;->a:Lcom/google/android/libraries/places/internal/hs;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public e()Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hg;->a:Lcom/google/android/libraries/places/internal/ha;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hg;->h()Lcom/google/android/libraries/places/internal/ha;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/hg;->a:Lcom/google/android/libraries/places/internal/ha;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/hg;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hg;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/hg;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/hg;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hg;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method h()Lcom/google/android/libraries/places/internal/ha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ha;->b([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ha;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->a()Lcom/google/android/libraries/places/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 63
    new-instance v0, Lcom/google/android/libraries/places/internal/hh;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/hh;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
