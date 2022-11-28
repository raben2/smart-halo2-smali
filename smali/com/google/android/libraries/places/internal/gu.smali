.class abstract Lcom/google/android/libraries/places/internal/gu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/libraries/places/internal/gu<",
        "TC;>;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final a:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gu;->a:Ljava/lang/Comparable;

    return-void
.end method

.method static b(Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/gu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/android/libraries/places/internal/gu<",
            "TC;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/google/android/libraries/places/internal/gy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/gy;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/places/internal/gu;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/gu<",
            "TC;>;)I"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/libraries/places/internal/gx;->b:Lcom/google/android/libraries/places/internal/gx;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/gv;->b:Lcom/google/android/libraries/places/internal/gv;

    const/4 v2, -0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gu;->a:Ljava/lang/Comparable;

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/gu;->a:Ljava/lang/Comparable;

    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/hk;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 15
    :cond_2
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/gw;

    instance-of p1, p1, Lcom/google/android/libraries/places/internal/gw;

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    if-eqz v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method abstract a(Ljava/lang/StringBuilder;)V
.end method

.method abstract a(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/StringBuilder;)V
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/google/android/libraries/places/internal/gu;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/gu;->a(Lcom/google/android/libraries/places/internal/gu;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 18
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/gu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19
    check-cast p1, Lcom/google/android/libraries/places/internal/gu;

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/gu;->a(Lcom/google/android/libraries/places/internal/gu;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :catch_0
    :cond_1
    return v1
.end method

.method public abstract hashCode()I
.end method
