.class final Lcom/google/android/libraries/places/internal/gx;
.super Lcom/google/android/libraries/places/internal/gu;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/gu<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/libraries/places/internal/gx;

.field public static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/gx;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gx;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/gx;->b:Lcom/google/android/libraries/places/internal/gx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/gu;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/libraries/places/internal/gx;->b:Lcom/google/android/libraries/places/internal/gx;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/gu;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/gu<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method final a(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "(-\u221e"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final a(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method final b(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/google/android/libraries/places/internal/gu;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/gu;->a(Lcom/google/android/libraries/places/internal/gu;)I

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "-\u221e"

    return-object v0
.end method
