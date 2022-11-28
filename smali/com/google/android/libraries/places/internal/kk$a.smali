.class final Lcom/google/android/libraries/places/internal/kk$a;
.super Lcom/google/android/libraries/places/internal/kk;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final d:[B

.field private final e:I

.field private f:I


# direct methods
.method constructor <init>([BII)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kk;-><init>()V

    if-eqz p1, :cond_1

    or-int v0, p2, p3

    .line 5
    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    .line 10
    iput p2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 11
    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->e:I

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p1, p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 8
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final c([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget p1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 147
    new-instance p2, Lcom/google/android/libraries/places/internal/kk$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/libraries/places/internal/kk$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Lcom/google/android/libraries/places/internal/kk$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/internal/kk$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/kk;->a(J)V

    return-void
.end method

.method public final a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->a(J)V

    return-void
.end method

.method public final a(ILcom/google/android/libraries/places/internal/kc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/kk;->a(Lcom/google/android/libraries/places/internal/kc;)V

    return-void
.end method

.method public final a(ILcom/google/android/libraries/places/internal/ma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 v2, 0x2

    .line 52
    invoke-virtual {p0, v2, p1}, Lcom/google/android/libraries/places/internal/kk;->c(II)V

    .line 54
    invoke-virtual {p0, v0, v2}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/kk;->a(Lcom/google/android/libraries/places/internal/ma;)V

    const/4 p1, 0x4

    .line 56
    invoke-virtual {p0, v1, p1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    return-void
.end method

.method final a(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 48
    move-object p1, p2

    check-cast p1, Lcom/google/android/libraries/places/internal/ju;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/ju;->a(Lcom/google/android/libraries/places/internal/mp;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 49
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/kk$a;->c:Lcom/google/android/libraries/places/internal/nt;

    invoke-interface {p3, p2, p1}, Lcom/google/android/libraries/places/internal/mp;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/kk;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    int-to-byte p1, p2

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->a(B)V

    return-void
.end method

.method public final a(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    sget-boolean v0, Lcom/google/android/libraries/places/internal/kk;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kk;->h()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v6, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v6, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 129
    new-instance p2, Lcom/google/android/libraries/places/internal/kk$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/places/internal/kk$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Lcom/google/android/libraries/places/internal/kc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kc;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/places/internal/kc;->a(Lcom/google/android/libraries/places/internal/kb;)V

    return-void
.end method

.method public final a(Lcom/google/android/libraries/places/internal/ma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/ma;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 64
    invoke-interface {p1, p0}, Lcom/google/android/libraries/places/internal/ma;->a(Lcom/google/android/libraries/places/internal/kk;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 152
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 153
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/kk$a;->g(I)I

    move-result v1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/kk$a;->g(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    .line 156
    iput v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 157
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v3, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kk;->h()I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/libraries/places/internal/nm;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 158
    iput v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 160
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 161
    iput v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/nm;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 164
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    .line 165
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kk;->h()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/libraries/places/internal/nm;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/np; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 180
    new-instance v0, Lcom/google/android/libraries/places/internal/kk$b;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/kk$b;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    move-object v7, v1

    .line 168
    iput v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 170
    sget-object v2, Lcom/google/android/libraries/places/internal/kk;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.CodedOutputStream"

    const-string v5, "inefficientWriteStringNoTag"

    const-string v6, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    sget-object v0, Lcom/google/android/libraries/places/internal/kx;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 172
    :try_start_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    const/4 v0, 0x0

    .line 173
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/kb;->a([BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/libraries/places/internal/kk$b; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 178
    throw p1

    :catch_3
    move-exception p1

    .line 176
    new-instance v0, Lcom/google/android/libraries/places/internal/kk$b;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/kk$b;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk$a;->c([BII)V

    return-void
.end method

.method public final b(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    sget-boolean v0, Lcom/google/android/libraries/places/internal/kk;->b:Z

    if-eqz v0, :cond_4

    .line 77
    invoke-static {}, Lcom/google/android/libraries/places/internal/jz;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kk;->h()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    return-void

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    .line 99
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/nk;->a([BJB)V

    return-void

    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_5

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    new-instance v0, Lcom/google/android/libraries/places/internal/kk$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/internal/kk$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/kk;->a(I)V

    return-void
.end method

.method public final b(ILcom/google/android/libraries/places/internal/kc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    const/4 v2, 0x2

    .line 59
    invoke-virtual {p0, v2, p1}, Lcom/google/android/libraries/places/internal/kk;->c(II)V

    .line 60
    invoke-virtual {p0, v0, p2}, Lcom/google/android/libraries/places/internal/kk;->a(ILcom/google/android/libraries/places/internal/kc;)V

    const/4 p1, 0x4

    .line 61
    invoke-virtual {p0, v1, p1}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    return-void
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    const/4 p2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk$a;->c([BII)V

    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    return-void
.end method

.method public final c(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->c(J)V

    return-void
.end method

.method public final c(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 132
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 135
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 141
    new-instance p2, Lcom/google/android/libraries/places/internal/kk$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/libraries/places/internal/kk$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 110
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->d:[B

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Lcom/google/android/libraries/places/internal/kk$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/libraries/places/internal/kk$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/internal/kk$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kk;->a(II)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/kk;->d(I)V

    return-void
.end method

.method public final h()I
    .locals 2

    .line 182
    iget v0, p0, Lcom/google/android/libraries/places/internal/kk$a;->e:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/kk$a;->f:I

    sub-int/2addr v0, v1

    return v0
.end method
