.class final Lcom/google/android/libraries/places/internal/nk$a;
.super Lcom/google/android/libraries/places/internal/nk$d;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/nk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/nk$d;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)B
    .locals 1

    .line 3
    sget-boolean v0, Lcom/google/android/libraries/places/internal/nk;->d:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/nk;->g(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 8
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/nk;->h(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;JB)V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/google/android/libraries/places/internal/nk;->d:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Object;JB)V

    return-void

    .line 15
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JD)V
    .locals 6

    .line 35
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/nk$d;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JF)V
    .locals 0

    .line 32
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/nk$d;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JZ)V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/google/android/libraries/places/internal/nk;->d:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/nk;->b(Ljava/lang/Object;JZ)V

    return-void

    .line 29
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/nk;->c(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final b(Ljava/lang/Object;J)Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/google/android/libraries/places/internal/nk;->d:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/nk;->i(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 22
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/nk;->j(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;J)F
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/nk$d;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;J)D
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/nk$d;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method
