.class public Lcom/google/android/libraries/places/internal/dv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ny;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/ny;"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/libraries/places/internal/iy;)Lcom/google/android/libraries/places/internal/ib;
    .locals 5

    .line 81
    sget-object v0, Lcom/google/android/libraries/places/internal/ib;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ib$a;

    .line 82
    sget-object v1, Lcom/google/android/libraries/places/internal/ib$b;->a:Lcom/google/android/libraries/places/internal/ib$b;

    .line 84
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 85
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/ib$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/ib;

    if-eqz v1, :cond_3

    .line 89
    iget v3, v2, Lcom/google/android/libraries/places/internal/ib;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/libraries/places/internal/ib;->a:I

    .line 91
    iget v1, v1, Lcom/google/android/libraries/places/internal/ib$b;->b:I

    .line 92
    iput v1, v2, Lcom/google/android/libraries/places/internal/ib;->b:I

    .line 96
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 97
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ib$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/ib;

    if-eqz p0, :cond_2

    .line 101
    iput-object p0, v1, Lcom/google/android/libraries/places/internal/ib;->c:Lcom/google/android/libraries/places/internal/iy;

    .line 102
    iget p0, v1, Lcom/google/android/libraries/places/internal/ib;->a:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v1, Lcom/google/android/libraries/places/internal/ib;->a:I

    .line 106
    iget-boolean p0, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p0, :cond_0

    .line 107
    iget-object p0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 109
    iput-boolean v4, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 110
    iget-object p0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 111
    :goto_0
    check-cast p0, Lcom/google/android/libraries/places/internal/kv;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    check-cast p0, Lcom/google/android/libraries/places/internal/kv;

    check-cast p0, Lcom/google/android/libraries/places/internal/ib;

    return-object p0

    .line 114
    :cond_1
    new-instance p0, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 115
    throw p0

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/iy$a;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dw;->c()Lcom/google/android/libraries/places/internal/dw$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/dw$b;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6
    sget-object v0, Lcom/google/android/libraries/places/internal/iy$c;->a:Lcom/google/android/libraries/places/internal/iy$c;

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object v0, Lcom/google/android/libraries/places/internal/iy$c;->c:Lcom/google/android/libraries/places/internal/iy$c;

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object v0, Lcom/google/android/libraries/places/internal/iy$c;->b:Lcom/google/android/libraries/places/internal/iy$c;

    .line 7
    :goto_0
    sget-object v1, Lcom/google/android/libraries/places/internal/iy;->o:Lcom/google/android/libraries/places/internal/iy;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/iy$a;

    .line 8
    sget-object v2, Lcom/google/android/libraries/places/internal/ie;->d:Lcom/google/android/libraries/places/internal/ie;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/ie$a;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dw;->a()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 12
    iget-object v4, v2, Lcom/google/android/libraries/places/internal/ie$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v4, Lcom/google/android/libraries/places/internal/ie;

    if-eqz v3, :cond_4

    .line 16
    iget v5, v4, Lcom/google/android/libraries/places/internal/ie;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/libraries/places/internal/ie;->a:I

    .line 17
    iput-object v3, v4, Lcom/google/android/libraries/places/internal/ie;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dw;->b()I

    move-result p0

    .line 21
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 22
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/ie$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v3, Lcom/google/android/libraries/places/internal/ie;

    .line 24
    iget v4, v3, Lcom/google/android/libraries/places/internal/ie;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/google/android/libraries/places/internal/ie;->a:I

    .line 25
    iput p0, v3, Lcom/google/android/libraries/places/internal/ie;->c:I

    .line 29
    iget-boolean p0, v2, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p0, :cond_0

    .line 30
    iget-object p0, v2, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_1

    .line 31
    :cond_0
    iget-object p0, v2, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 32
    iput-boolean v6, v2, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 33
    iget-object p0, v2, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 34
    :goto_1
    check-cast p0, Lcom/google/android/libraries/places/internal/kv;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    check-cast p0, Lcom/google/android/libraries/places/internal/kv;

    check-cast p0, Lcom/google/android/libraries/places/internal/ie;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 43
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/iy$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/iy;

    if-eqz p0, :cond_2

    .line 47
    iput-object p0, v2, Lcom/google/android/libraries/places/internal/iy;->c:Lcom/google/android/libraries/places/internal/ie;

    .line 48
    iget p0, v2, Lcom/google/android/libraries/places/internal/iy;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v2, Lcom/google/android/libraries/places/internal/iy;->a:I

    .line 52
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 53
    iget-object p0, v1, Lcom/google/android/libraries/places/internal/iy$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast p0, Lcom/google/android/libraries/places/internal/iy;

    .line 55
    iget v2, p0, Lcom/google/android/libraries/places/internal/iy;->a:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/libraries/places/internal/iy;->a:I

    .line 56
    iput-boolean v6, p0, Lcom/google/android/libraries/places/internal/iy;->k:Z

    .line 60
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 61
    iget-object p0, v1, Lcom/google/android/libraries/places/internal/iy$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast p0, Lcom/google/android/libraries/places/internal/iy;

    if-eqz v0, :cond_1

    .line 65
    iget v2, p0, Lcom/google/android/libraries/places/internal/iy;->a:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/libraries/places/internal/iy;->a:I

    .line 67
    iget v0, v0, Lcom/google/android/libraries/places/internal/iy$c;->d:I

    .line 68
    iput v0, p0, Lcom/google/android/libraries/places/internal/iy;->n:I

    const-string p0, "1.1.0"

    .line 72
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 73
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/iy$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/iy;

    .line 77
    iget v2, v0, Lcom/google/android/libraries/places/internal/iy;->a:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/libraries/places/internal/iy;->a:I

    .line 78
    iput-object p0, v0, Lcom/google/android/libraries/places/internal/iy;->m:Ljava/lang/String;

    return-object v1

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 37
    :cond_3
    new-instance p0, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 38
    throw p0

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/libraries/places/internal/fw;Lcom/google/android/libraries/places/internal/d;Lcom/google/android/libraries/places/internal/j;Lcom/google/android/libraries/places/internal/ds;Lcom/google/android/libraries/places/internal/a;)Lcom/google/android/libraries/places/internal/u;
    .locals 7

    .line 119
    new-instance v6, Lcom/google/android/libraries/places/internal/u;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/u;-><init>(Lcom/google/android/libraries/places/internal/fw;Lcom/google/android/libraries/places/internal/d;Lcom/google/android/libraries/places/internal/j;Lcom/google/android/libraries/places/internal/ds;Lcom/google/android/libraries/places/internal/a;)V

    return-object v6
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/internal/dv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/google/android/libraries/places/internal/dv;"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dv;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public synthetic a()Lcom/google/android/libraries/places/internal/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dv;->c()Lcom/google/android/libraries/places/internal/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 120
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public c()Lcom/google/android/libraries/places/internal/af;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dv;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Photo must be set to non-null value."

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/go;->b(ZLjava/lang/Object;)V

    .line 126
    new-instance v0, Lcom/google/android/libraries/places/internal/af;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dv;->a:Landroid/graphics/Bitmap;

    .line 127
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/af;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method
