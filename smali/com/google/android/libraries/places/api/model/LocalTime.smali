.class public abstract Lcom/google/android/libraries/places/api/model/LocalTime;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/model/LocalTime$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/libraries/places/internal/bj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/bj;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/LocalTime$a;->a(I)Lcom/google/android/libraries/places/api/model/LocalTime$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/api/model/LocalTime$a;->b(I)Lcom/google/android/libraries/places/api/model/LocalTime$a;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime$a;->a()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result p1

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/hk;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/hk;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/hk;->b(Ljava/lang/Comparable;)Z

    move-result v1

    const-string v2, "Hours must not be out-of-range: 0 to 23, but was: %s."

    .line 7
    invoke-static {v1, v2, p1}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/String;I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getMinutes()I

    move-result p1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/hk;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/hk;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/hk;->b(Ljava/lang/Comparable;)Z

    move-result v0

    const-string v1, "Minutes must not be out-of-range: 0 to 59, but was: %s."

    .line 11
    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract getHours()I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x17L
    .end annotation
.end method

.method public abstract getMinutes()I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x3bL
    .end annotation
.end method
