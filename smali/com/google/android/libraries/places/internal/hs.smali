.class final Lcom/google/android/libraries/places/internal/hs;
.super Lcom/google/android/libraries/places/internal/hg;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/hg<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/hs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/hs<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient b:[Ljava/lang/Object;

.field private final transient c:[Ljava/lang/Object;

.field private final transient d:I

.field private final transient e:I

.field private final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v6, Lcom/google/android/libraries/places/internal/hs;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/hs;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lcom/google/android/libraries/places/internal/hs;->a:Lcom/google/android/libraries/places/internal/hs;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hs;->b:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/hs;->c:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lcom/google/android/libraries/places/internal/hs;->d:I

    .line 5
    iput p2, p0, Lcom/google/android/libraries/places/internal/hs;->e:I

    .line 6
    iput p5, p0, Lcom/google/android/libraries/places/internal/hs;->f:I

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hs;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/libraries/places/internal/hs;->f:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget p1, p0, Lcom/google/android/libraries/places/internal/hs;->f:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final a()Lcom/google/android/libraries/places/internal/hu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/hu<",
            "TE;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->e()Lcom/google/android/libraries/places/internal/ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/gz;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/hu;

    return-object v0
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hs;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hs;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/go;->c(Ljava/lang/Object;)I

    move-result v2

    .line 12
    :goto_0
    iget v3, p0, Lcom/google/android/libraries/places/internal/hs;->d:I

    and-int/2addr v2, v3

    .line 13
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    .line 16
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method final d()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/android/libraries/places/internal/hs;->f:I

    return v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final h()Lcom/google/android/libraries/places/internal/ha;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/ha<",
            "TE;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hs;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/libraries/places/internal/hs;->f:I

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ha;->b([Ljava/lang/Object;I)Lcom/google/android/libraries/places/internal/ha;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/android/libraries/places/internal/hs;->e:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/gz;->a()Lcom/google/android/libraries/places/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/google/android/libraries/places/internal/hs;->f:I

    return v0
.end method
