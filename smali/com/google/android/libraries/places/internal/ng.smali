.class public final Lcom/google/android/libraries/places/internal/ng;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/ng;


# instance fields
.field public b:I

.field public c:[I

.field public d:[Ljava/lang/Object;

.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 117
    new-instance v0, Lcom/google/android/libraries/places/internal/ng;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ng;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ng;->a:Lcom/google/android/libraries/places/internal/ng;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    .line 7
    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/libraries/places/internal/ng;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/android/libraries/places/internal/ng;->e:I

    .line 11
    iput p1, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    .line 12
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ng;->c:[I

    .line 13
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    .line 14
    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/ng;->f:Z

    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/ng;Lcom/google/android/libraries/places/internal/ng;)Lcom/google/android/libraries/places/internal/ng;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    iget v1, p1, Lcom/google/android/libraries/places/internal/ng;->b:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ng;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/ng;->c:[I

    iget v3, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    iget v4, p1, Lcom/google/android/libraries/places/internal/ng;->b:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    iget p1, p1, Lcom/google/android/libraries/places/internal/ng;->b:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p0, Lcom/google/android/libraries/places/internal/ng;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/ng;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 48
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/libraries/places/internal/ld;->c()Lcom/google/android/libraries/places/internal/le;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 40
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/nt;->a()Lcom/google/android/libraries/places/internal/nu;

    move-result-object p0

    sget-object v1, Lcom/google/android/libraries/places/internal/nu;->a:Lcom/google/android/libraries/places/internal/nu;

    if-ne p0, v1, :cond_0

    .line 41
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/nt;->a(I)V

    .line 42
    check-cast p1, Lcom/google/android/libraries/places/internal/ng;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ng;->a(Lcom/google/android/libraries/places/internal/nt;)V

    .line 43
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/nt;->b(I)V

    return-void

    .line 44
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/nt;->b(I)V

    .line 45
    check-cast p1, Lcom/google/android/libraries/places/internal/ng;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ng;->a(Lcom/google/android/libraries/places/internal/nt;)V

    .line 46
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/nt;->a(I)V

    return-void

    .line 38
    :pswitch_1
    check-cast p1, Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/libraries/places/internal/nt;->a(ILcom/google/android/libraries/places/internal/kc;)V

    return-void

    .line 36
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Lcom/google/android/libraries/places/internal/nt;->d(IJ)V

    return-void

    .line 32
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Lcom/google/android/libraries/places/internal/nt;->a(IJ)V

    return-void

    .line 34
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/libraries/places/internal/nt;->d(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 49
    iget v0, p0, Lcom/google/android/libraries/places/internal/ng;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    :goto_0
    iget v2, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    if-ge v0, v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->c:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/libraries/places/internal/ld;->c()Lcom/google/android/libraries/places/internal/le;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :pswitch_0
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/libraries/places/internal/ng;

    .line 71
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/ng;->a()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_1

    .line 67
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/libraries/places/internal/kc;

    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 65
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/kk;->g(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 61
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/kk;->e(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/kk;->i(II)I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iput v1, p0, Lcom/google/android/libraries/places/internal/ng;->e:I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/libraries/places/internal/nt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget v0, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/nt;->a()Lcom/google/android/libraries/places/internal/nu;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/nu;->a:Lcom/google/android/libraries/places/internal/nu;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 19
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    if-ge v0, v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ng;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/libraries/places/internal/ng;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 22
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 23
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ng;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/libraries/places/internal/ng;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 81
    :cond_1
    instance-of v2, p1, Lcom/google/android/libraries/places/internal/ng;

    if-nez v2, :cond_2

    return v1

    .line 83
    :cond_2
    check-cast p1, Lcom/google/android/libraries/places/internal/ng;

    .line 84
    iget v2, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    iget v3, p1, Lcom/google/android/libraries/places/internal/ng;->b:I

    if-ne v2, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ng;->c:[I

    iget-object v4, p1, Lcom/google/android/libraries/places/internal/ng;->c:[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    .line 87
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_8

    .line 91
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 94
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    return v0

    :cond_8
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 101
    iget v0, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    .line 102
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ng;->c:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    .line 105
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ng;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/libraries/places/internal/ng;->b:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    .line 112
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method
