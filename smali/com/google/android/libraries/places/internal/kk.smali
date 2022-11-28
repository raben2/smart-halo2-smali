.class public abstract Lcom/google/android/libraries/places/internal/kk;
.super Lcom/google/android/libraries/places/internal/kb;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/kk$a;,
        Lcom/google/android/libraries/places/internal/kk$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z


# instance fields
.field public c:Lcom/google/android/libraries/places/internal/nt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    const-class v0, Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/kk;->a:Ljava/util/logging/Logger;

    .line 155
    sget-boolean v0, Lcom/google/android/libraries/places/internal/nk;->c:Z

    .line 156
    sput-boolean v0, Lcom/google/android/libraries/places/internal/kk;->b:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kb;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static a(ILcom/google/android/libraries/places/internal/lj;)I
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    .line 52
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    if-eqz v0, :cond_0

    .line 53
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kc;->a()I

    move-result p1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    if-eqz v0, :cond_1

    .line 55
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/ma;->h()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/lj;)I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kc;->a()I

    move-result p0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ma;->h()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 130
    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static a(Lcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)I
    .locals 0

    .line 141
    check-cast p0, Lcom/google/android/libraries/places/internal/ju;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ju;->a(Lcom/google/android/libraries/places/internal/mp;)I

    move-result p0

    .line 142
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a([B)Lcom/google/android/libraries/places/internal/kk;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/kk$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/libraries/places/internal/kk$a;-><init>([BII)V

    return-object v1
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static b(ID)I
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static b(IF)I
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static b(ILcom/google/android/libraries/places/internal/lj;)I
    .locals 2

    const/4 v0, 0x1

    .line 71
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 72
    invoke-static {v1, p0}, Lcom/google/android/libraries/places/internal/kk;->g(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 73
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->a(ILcom/google/android/libraries/places/internal/lj;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(ILcom/google/android/libraries/places/internal/ma;)I
    .locals 2

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 62
    invoke-static {v1, p0}, Lcom/google/android/libraries/places/internal/kk;->g(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 64
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->b(Lcom/google/android/libraries/places/internal/ma;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static b(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)I
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(Lcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/google/android/libraries/places/internal/kc;)I
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kc;->a()I

    move-result p0

    .line 133
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Lcom/google/android/libraries/places/internal/ma;)I
    .locals 1

    .line 138
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ma;->h()I

    move-result p0

    .line 139
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/nm;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/np; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    sget-object v0, Lcom/google/android/libraries/places/internal/kx;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 119
    array-length p0, p0

    .line 121
    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b([B)I
    .locals 1

    .line 135
    array-length p0, p0

    .line 136
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static c(ILcom/google/android/libraries/places/internal/kc;)I
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kc;->a()I

    move-result p1

    .line 48
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static c(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 150
    check-cast p1, Lcom/google/android/libraries/places/internal/ju;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ju;->a(Lcom/google/android/libraries/places/internal/mp;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(Lcom/google/android/libraries/places/internal/ma;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/ma;->h()I

    move-result p0

    return p0
.end method

.method public static d()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static d(IJ)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/kk;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(ILcom/google/android/libraries/places/internal/kc;)I
    .locals 2

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 68
    invoke-static {v1, p0}, Lcom/google/android/libraries/places/internal/kk;->g(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 69
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->c(ILcom/google/android/libraries/places/internal/kc;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(J)I
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->e(J)I

    move-result p0

    return p0
.end method

.method public static e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static e(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x0

    .line 77
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result p0

    return p0
.end method

.method public static e(IJ)I
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/kk;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static f()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static f(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static f(II)I
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->f(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(IJ)I
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/kk;->g(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/kk;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(J)I
    .locals 0

    .line 108
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->g(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->e(J)I

    move-result p0

    return p0
.end method

.method public static g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static g(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static g(II)I
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(IJ)I
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static g(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static h(I)I
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->k(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result p0

    return p0
.end method

.method public static h(II)I
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    .line 26
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->k(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(IJ)I
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static i(I)I
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->f(I)I

    move-result p0

    return p0
.end method

.method public static i(II)I
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static j(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->g(I)I

    move-result p0

    return p0
.end method

.method public static j(II)I
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static k(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static k(II)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/kk;->e(I)I

    move-result p0

    .line 43
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->f(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract a(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->c(J)V

    return-void
.end method

.method public final a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->d(I)V

    return-void
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->c(IJ)V

    return-void
.end method

.method public final a(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->e(II)V

    return-void
.end method

.method public abstract a(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/google/android/libraries/places/internal/kc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/google/android/libraries/places/internal/ma;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract a(ILcom/google/android/libraries/places/internal/ma;Lcom/google/android/libraries/places/internal/mp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/libraries/places/internal/kc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/libraries/places/internal/ma;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->a(B)V

    return-void
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/libraries/places/internal/kk;->g(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/kk;->a(IJ)V

    return-void
.end method

.method public abstract b(ILcom/google/android/libraries/places/internal/kc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/kk;->g(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->a(J)V

    return-void
.end method

.method abstract b([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->k(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kk;->b(I)V

    return-void
.end method

.method public abstract c(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final d(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/kk;->k(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/kk;->c(II)V

    return-void
.end method

.method public abstract e(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h()I
.end method

.method public final i()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kk;->h()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
