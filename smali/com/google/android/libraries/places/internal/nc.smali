.class public Lcom/google/android/libraries/places/internal/nc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ly;


# instance fields
.field public a:I

.field public final b:[B

.field public final c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 13
    iput v0, p0, Lcom/google/android/libraries/places/internal/nc;->a:I

    return-void
.end method

.method constructor <init>([BIIZ)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/nc;-><init>()V

    const v0, 0x7fffffff

    .line 27
    iput v0, p0, Lcom/google/android/libraries/places/internal/nc;->h:I

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/nc;->b:[B

    add-int/2addr p3, p2

    .line 29
    iput p3, p0, Lcom/google/android/libraries/places/internal/nc;->d:I

    .line 30
    iput p2, p0, Lcom/google/android/libraries/places/internal/nc;->f:I

    .line 31
    iget p1, p0, Lcom/google/android/libraries/places/internal/nc;->f:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/nc;->g:I

    .line 32
    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/nc;->c:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZB)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/nc;-><init>([BIIZ)V

    return-void
.end method

.method public static a([B)Lcom/google/android/libraries/places/internal/nc;
    .locals 2

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/libraries/places/internal/nc;->a([BII)Lcom/google/android/libraries/places/internal/nc;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/google/android/libraries/places/internal/nc;
    .locals 0

    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1, p2, p1}, Lcom/google/android/libraries/places/internal/nc;->a([BIIZ)Lcom/google/android/libraries/places/internal/nc;

    move-result-object p0

    return-object p0
.end method

.method static a([BIIZ)Lcom/google/android/libraries/places/internal/nc;
    .locals 7

    .line 6
    new-instance v6, Lcom/google/android/libraries/places/internal/nc;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/nc;-><init>([BIIZB)V

    .line 7
    :try_start_0
    invoke-virtual {v6, p2}, Lcom/google/android/libraries/places/internal/nc;->a(I)I
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/ld; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/ld;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/nc;->d()I

    move-result v0

    add-int/2addr p1, v0

    .line 18
    iget v0, p0, Lcom/google/android/libraries/places/internal/nc;->h:I

    if-gt p1, v0, :cond_0

    .line 21
    iput p1, p0, Lcom/google/android/libraries/places/internal/nc;->h:I

    .line 22
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/nc;->e()V

    return v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/ld;->a()Lcom/google/android/libraries/places/internal/ld;

    move-result-object p1

    throw p1

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/ld;->b()Lcom/google/android/libraries/places/internal/ld;

    move-result-object p1

    throw p1
.end method

.method public final a()Lcom/google/android/libraries/places/internal/ml;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final b()Z
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final c()Lcom/google/android/libraries/places/internal/ma;
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public d()I
    .locals 2

    .line 24
    iget v0, p0, Lcom/google/android/libraries/places/internal/nc;->f:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/nc;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method e()V
    .locals 3

    .line 34
    iget v0, p0, Lcom/google/android/libraries/places/internal/nc;->d:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/nc;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/nc;->d:I

    .line 35
    iget v0, p0, Lcom/google/android/libraries/places/internal/nc;->d:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/nc;->g:I

    sub-int v1, v0, v1

    .line 36
    iget v2, p0, Lcom/google/android/libraries/places/internal/nc;->h:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 37
    iput v1, p0, Lcom/google/android/libraries/places/internal/nc;->e:I

    .line 38
    iget v1, p0, Lcom/google/android/libraries/places/internal/nc;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/nc;->d:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/android/libraries/places/internal/nc;->e:I

    return-void
.end method
