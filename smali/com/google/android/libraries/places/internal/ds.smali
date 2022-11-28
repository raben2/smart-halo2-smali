.class public Lcom/google/android/libraries/places/internal/ds;
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
.field public final a:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field public final b:Lcom/google/android/libraries/places/internal/dw;

.field public final c:Lcom/google/android/libraries/places/internal/dz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dw;Lcom/google/android/libraries/places/internal/dz;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ds;->a:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 566
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ds;->b:Lcom/google/android/libraries/places/internal/dw;

    .line 567
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ds;->c:Lcom/google/android/libraries/places/internal/dz;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/clearcut/ClearcutLogger;
    .locals 1

    const-string v0, "LE"

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->anonymousLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/lt;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    return-object p0
.end method

.method public static a(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/ApiException;
    .locals 3

    .line 630
    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 631
    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    return-object p0

    .line 632
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    .line 633
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/ik$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT::",
            "Lcom/google/android/libraries/places/internal/az;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TResponseT;>;)",
            "Lcom/google/android/libraries/places/internal/ik$c;"
        }
    .end annotation

    .line 623
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    sget-object p1, Lcom/google/android/libraries/places/internal/ik$c;->b:Lcom/google/android/libraries/places/internal/ik$c;

    return-object p1

    .line 625
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/ds;->a(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 626
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    .line 629
    sget-object p1, Lcom/google/android/libraries/places/internal/ik$c;->a:Lcom/google/android/libraries/places/internal/ik$c;

    return-object p1

    .line 628
    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/ik$c;->c:Lcom/google/android/libraries/places/internal/ik$c;

    return-object p1

    .line 627
    :cond_2
    sget-object p1, Lcom/google/android/libraries/places/internal/ik$c;->d:Lcom/google/android/libraries/places/internal/ik$c;

    return-object p1
.end method

.method public a()Lcom/google/android/libraries/places/internal/jm$a;
    .locals 6

    .line 569
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ds;->c:Lcom/google/android/libraries/places/internal/dz;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/dz;->c()Ljava/util/Locale;

    move-result-object v0

    .line 570
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 571
    sget-object v2, Lcom/google/android/libraries/places/internal/jm;->j:Lcom/google/android/libraries/places/internal/jm;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/jm$a;

    .line 572
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 574
    iget-object v4, v2, Lcom/google/android/libraries/places/internal/jm$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v4, Lcom/google/android/libraries/places/internal/jm;

    if-eqz v3, :cond_2

    .line 578
    iget v5, v4, Lcom/google/android/libraries/places/internal/jm;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/google/android/libraries/places/internal/jm;->a:I

    .line 579
    iput-object v3, v4, Lcom/google/android/libraries/places/internal/jm;->c:Ljava/lang/String;

    .line 582
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 585
    iget-object v1, v2, Lcom/google/android/libraries/places/internal/jm$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/jm;

    if-eqz v0, :cond_0

    .line 589
    iget v3, v1, Lcom/google/android/libraries/places/internal/jm;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lcom/google/android/libraries/places/internal/jm;->a:I

    .line 590
    iput-object v0, v1, Lcom/google/android/libraries/places/internal/jm;->d:Ljava/lang/String;

    goto :goto_0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-object v2

    .line 577
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/tasks/Task;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 489
    sget-object v0, Lcom/google/android/libraries/places/internal/ji;->c:Lcom/google/android/libraries/places/internal/ji;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ji$a;

    .line 490
    sget-object v1, Lcom/google/android/libraries/places/internal/ji$b;->a:Lcom/google/android/libraries/places/internal/ji$b;

    .line 491
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 492
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/ji$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/ji;

    if-eqz v1, :cond_7

    .line 496
    iget v3, v2, Lcom/google/android/libraries/places/internal/ji;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/libraries/places/internal/ji;->a:I

    .line 498
    iget v1, v1, Lcom/google/android/libraries/places/internal/ji$b;->b:I

    .line 499
    iput v1, v2, Lcom/google/android/libraries/places/internal/ji;->b:I

    .line 503
    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz v1, :cond_0

    .line 504
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_0

    .line 505
    :cond_0
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 506
    iput-boolean v4, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 507
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 508
    :goto_0
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 509
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 514
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/ji;

    .line 515
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ds;->b:Lcom/google/android/libraries/places/internal/dw;

    .line 516
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/iy$b;->b:Lcom/google/android/libraries/places/internal/iy$b;

    .line 517
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/iy$a;->a(Lcom/google/android/libraries/places/internal/iy$b;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 520
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/iy$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/iy;

    if-eqz v0, :cond_5

    .line 524
    iput-object v0, v2, Lcom/google/android/libraries/places/internal/iy;->g:Lcom/google/android/libraries/places/internal/ji;

    .line 525
    iget v0, v2, Lcom/google/android/libraries/places/internal/iy;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v2, Lcom/google/android/libraries/places/internal/iy;->a:I

    .line 529
    iget-boolean v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_1

    .line 531
    :cond_1
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 532
    iput-boolean v4, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 533
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 534
    :goto_1
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 535
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 540
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/iy;

    .line 541
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/iy;)V

    .line 542
    invoke-static {}, Lcom/google/android/libraries/places/internal/ik;->a()Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->d:Lcom/google/android/libraries/places/internal/ik$b;

    .line 543
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/ik$a;->a(Lcom/google/android/libraries/places/internal/ik$b;)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object v0

    .line 544
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/ik$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ik$a;->a(Lcom/google/android/libraries/places/internal/ik$c;)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p1

    sub-long/2addr p4, p2

    long-to-int p2, p4

    .line 545
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ik$a;->a(I)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p1

    .line 550
    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p2, :cond_2

    .line 551
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_2

    .line 552
    :cond_2
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 553
    iput-boolean v4, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 554
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 555
    :goto_2
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 556
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 561
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/ik;

    .line 562
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/ik;)V

    return-void

    .line 558
    :cond_3
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 559
    throw p1

    .line 537
    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 538
    throw p1

    .line 523
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 511
    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 512
    throw p1

    .line 495
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Lcom/google/android/gms/tasks/Task;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/google/android/libraries/places/internal/jd;->c:Lcom/google/android/libraries/places/internal/jd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/jd$a;

    .line 177
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 178
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/jd$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/jd;

    .line 180
    iget v2, v1, Lcom/google/android/libraries/places/internal/jd;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/libraries/places/internal/jd;->a:I

    .line 182
    invoke-static {}, Lcom/google/android/libraries/places/internal/jl;->a()Lcom/google/android/libraries/places/internal/jl$a;

    move-result-object v1

    .line 183
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/aq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/jl$a;->a(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/jl$a;

    move-result-object v1

    .line 188
    iget-boolean v2, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 189
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_0

    .line 190
    :cond_0
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 191
    iput-boolean v3, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 192
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 193
    :goto_0
    check-cast v1, Lcom/google/android/libraries/places/internal/kv;

    .line 194
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 199
    check-cast v1, Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/jl;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 202
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/jd$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/jd;

    if-eqz v1, :cond_e

    .line 206
    iput-object v1, v2, Lcom/google/android/libraries/places/internal/jd;->b:Lcom/google/android/libraries/places/internal/jl;

    .line 207
    iget v1, v2, Lcom/google/android/libraries/places/internal/jd;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lcom/google/android/libraries/places/internal/jd;->a:I

    .line 211
    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz v1, :cond_1

    .line 212
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_1

    .line 213
    :cond_1
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 214
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 215
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 216
    :goto_1
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 217
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 222
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/jd;

    .line 224
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ds;->a()Lcom/google/android/libraries/places/internal/jm$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/jm$b;->a:Lcom/google/android/libraries/places/internal/jm$b;

    .line 225
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/jm$a;->a(Lcom/google/android/libraries/places/internal/jm$b;)Lcom/google/android/libraries/places/internal/jm$a;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 228
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/jm$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/jm;

    if-eqz v0, :cond_c

    .line 232
    iput-object v0, v2, Lcom/google/android/libraries/places/internal/jm;->h:Lcom/google/android/libraries/places/internal/jd;

    .line 233
    iget v0, v2, Lcom/google/android/libraries/places/internal/jm;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v2, Lcom/google/android/libraries/places/internal/jm;->a:I

    .line 237
    iget-boolean v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_2

    .line 239
    :cond_2
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 240
    iput-boolean v3, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 241
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 242
    :goto_2
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 243
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 248
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/jm;

    .line 249
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ds;->b:Lcom/google/android/libraries/places/internal/dw;

    .line 250
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/iy$b;->a:Lcom/google/android/libraries/places/internal/iy$b;

    .line 251
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/iy$a;->a(Lcom/google/android/libraries/places/internal/iy$b;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/iy$a;->a(Lcom/google/android/libraries/places/internal/jm;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/iy$a;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/iy$a;

    .line 259
    :cond_3
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_4

    .line 260
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_3

    .line 261
    :cond_4
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 262
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 263
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 264
    :goto_3
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 265
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 270
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/iy;

    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/iy;)V

    .line 272
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    .line 273
    sget-object v0, Lcom/google/android/libraries/places/internal/ij;->d:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ij$a;

    .line 276
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 277
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/ij;

    .line 279
    iget v2, v1, Lcom/google/android/libraries/places/internal/ij;->a:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/libraries/places/internal/ij;->a:I

    .line 280
    iput v3, v1, Lcom/google/android/libraries/places/internal/ij;->b:I

    .line 284
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 285
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/ij;

    .line 287
    iget v2, v1, Lcom/google/android/libraries/places/internal/ij;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/libraries/places/internal/ij;->a:I

    .line 288
    iput p1, v1, Lcom/google/android/libraries/places/internal/ij;->c:I

    .line 292
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_5

    .line 293
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_4

    .line 294
    :cond_5
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 295
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 296
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 297
    :goto_4
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 298
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 304
    invoke-static {}, Lcom/google/android/libraries/places/internal/ik;->a()Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->c:Lcom/google/android/libraries/places/internal/ik$b;

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/ik$a;->a(Lcom/google/android/libraries/places/internal/ik$b;)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 308
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ik$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/ik;

    if-eqz p1, :cond_8

    .line 312
    iput-object p1, v1, Lcom/google/android/libraries/places/internal/ik;->e:Lcom/google/android/libraries/places/internal/ij;

    .line 313
    iget p1, v1, Lcom/google/android/libraries/places/internal/ik;->a:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v1, Lcom/google/android/libraries/places/internal/ik;->a:I

    .line 316
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/ik$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ik$a;->a(Lcom/google/android/libraries/places/internal/ik$c;)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p1

    sub-long/2addr p5, p3

    long-to-int p2, p5

    .line 317
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ik$a;->a(I)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p1

    .line 322
    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p2, :cond_6

    .line 323
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_5

    .line 324
    :cond_6
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 325
    iput-boolean v3, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 326
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 327
    :goto_5
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 328
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 333
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/ik;

    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/ik;)V

    return-void

    .line 330
    :cond_7
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 331
    throw p1

    .line 311
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 300
    :cond_9
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 301
    throw p1

    .line 267
    :cond_a
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 268
    throw p1

    .line 245
    :cond_b
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 246
    throw p1

    .line 231
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 219
    :cond_d
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 220
    throw p1

    .line 205
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 196
    :cond_f
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 197
    throw p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Lcom/google/android/gms/tasks/Task;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/libraries/places/internal/ip;->c:Lcom/google/android/libraries/places/internal/ip;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ip$a;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/ar;->a(Lcom/google/android/libraries/places/api/model/TypeFilter;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 14
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/ip$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/ip;

    if-eqz v1, :cond_1

    .line 19
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/ip;->b:Lcom/google/android/libraries/places/internal/lc;

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/lc;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 20
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/ip;->b:Lcom/google/android/libraries/places/internal/lc;

    .line 21
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/lc;)Lcom/google/android/libraries/places/internal/lc;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/libraries/places/internal/ip;->b:Lcom/google/android/libraries/places/internal/lc;

    .line 22
    :cond_0
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ip;->b:Lcom/google/android/libraries/places/internal/lc;

    invoke-interface {v2, v1}, Lcom/google/android/libraries/places/internal/lc;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 27
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 28
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_1

    .line 29
    :cond_3
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 30
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 31
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 32
    :goto_1
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/ip;

    .line 39
    sget-object v1, Lcom/google/android/libraries/places/internal/is;->d:Lcom/google/android/libraries/places/internal/is;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/is$a;

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 44
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/is$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v3, Lcom/google/android/libraries/places/internal/is;

    if-eqz v0, :cond_4

    .line 48
    iput-object v0, v3, Lcom/google/android/libraries/places/internal/is;->c:Lcom/google/android/libraries/places/internal/ip;

    .line 49
    iget v0, v3, Lcom/google/android/libraries/places/internal/is;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v3, Lcom/google/android/libraries/places/internal/is;->a:I

    goto :goto_2

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 54
    :cond_5
    :goto_2
    iget-boolean v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz v0, :cond_6

    .line 55
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_3

    .line 56
    :cond_6
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 57
    iput-boolean v2, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 58
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 59
    :goto_3
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/is;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ds;->a()Lcom/google/android/libraries/places/internal/jm$a;

    move-result-object v1

    sget-object v3, Lcom/google/android/libraries/places/internal/jm$b;->b:Lcom/google/android/libraries/places/internal/jm$b;

    .line 68
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/jm$a;->a(Lcom/google/android/libraries/places/internal/jm$b;)Lcom/google/android/libraries/places/internal/jm$a;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 71
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/jm$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v3, Lcom/google/android/libraries/places/internal/jm;

    if-eqz v0, :cond_12

    .line 75
    iput-object v0, v3, Lcom/google/android/libraries/places/internal/jm;->i:Lcom/google/android/libraries/places/internal/is;

    .line 76
    iget v0, v3, Lcom/google/android/libraries/places/internal/jm;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v3, Lcom/google/android/libraries/places/internal/jm;->a:I

    .line 80
    iget-boolean v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_4

    .line 82
    :cond_7
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 83
    iput-boolean v2, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 84
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 85
    :goto_4
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 86
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 91
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    check-cast v0, Lcom/google/android/libraries/places/internal/jm;

    .line 92
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ds;->b:Lcom/google/android/libraries/places/internal/dw;

    .line 93
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v1

    sget-object v3, Lcom/google/android/libraries/places/internal/iy$b;->a:Lcom/google/android/libraries/places/internal/iy$b;

    .line 94
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/iy$a;->a(Lcom/google/android/libraries/places/internal/iy$b;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/iy$a;->a(Lcom/google/android/libraries/places/internal/jm;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 97
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/iy$a;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/iy$a;

    .line 102
    :cond_8
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_9

    .line 103
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_5

    .line 104
    :cond_9
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 105
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 106
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 107
    :goto_5
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 108
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 113
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/iy;

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/iy;)V

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 117
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    .line 118
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 119
    :cond_a
    sget-object v0, Lcom/google/android/libraries/places/internal/ii;->c:Lcom/google/android/libraries/places/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ii$a;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 123
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ii$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/ii;

    .line 125
    iget v3, v1, Lcom/google/android/libraries/places/internal/ii;->a:I

    or-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/libraries/places/internal/ii;->a:I

    .line 126
    iput p1, v1, Lcom/google/android/libraries/places/internal/ii;->b:I

    .line 130
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_b

    .line 131
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_6

    .line 132
    :cond_b
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 133
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 134
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 135
    :goto_6
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 136
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/ii;

    .line 142
    invoke-static {}, Lcom/google/android/libraries/places/internal/ik;->a()Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/ik$b;->b:Lcom/google/android/libraries/places/internal/ik$b;

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/ik$a;->a(Lcom/google/android/libraries/places/internal/ik$b;)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 146
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ik$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/ik;

    if-eqz p1, :cond_e

    .line 150
    iput-object p1, v1, Lcom/google/android/libraries/places/internal/ik;->g:Lcom/google/android/libraries/places/internal/ii;

    .line 151
    iget p1, v1, Lcom/google/android/libraries/places/internal/ik;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v1, Lcom/google/android/libraries/places/internal/ik;->a:I

    .line 154
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/ik$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ik$a;->a(Lcom/google/android/libraries/places/internal/ik$c;)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p1

    sub-long/2addr p5, p3

    long-to-int p2, p5

    .line 155
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ik$a;->a(I)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p1

    .line 160
    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p2, :cond_c

    .line 161
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_7

    .line 162
    :cond_c
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 163
    iput-boolean v2, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 164
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 165
    :goto_7
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 166
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 171
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/ik;

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/ik;)V

    return-void

    .line 168
    :cond_d
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 169
    throw p1

    .line 149
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 138
    :cond_f
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 139
    throw p1

    .line 110
    :cond_10
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 111
    throw p1

    .line 88
    :cond_11
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 89
    throw p1

    .line 74
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 62
    :cond_13
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 63
    throw p1

    .line 35
    :cond_14
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 36
    throw p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/tasks/Task;JJJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;JJJ)V"
        }
    .end annotation

    .line 336
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lcom/google/android/libraries/places/internal/jf$b;->b:Lcom/google/android/libraries/places/internal/jf$b;

    goto :goto_0

    .line 338
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/jf$b;->a:Lcom/google/android/libraries/places/internal/jf$b;

    .line 339
    :goto_0
    sget-object v1, Lcom/google/android/libraries/places/internal/jf;->e:Lcom/google/android/libraries/places/internal/jf;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/jf$a;

    .line 340
    invoke-static {}, Lcom/google/android/libraries/places/internal/jl;->a()Lcom/google/android/libraries/places/internal/jl$a;

    move-result-object v2

    .line 341
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/aq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/jl$a;->a(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/jl$a;

    move-result-object p1

    .line 346
    iget-boolean v2, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 347
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_1

    .line 348
    :cond_1
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 349
    iput-boolean v3, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 350
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 351
    :goto_1
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 352
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 357
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/jl;

    .line 359
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 360
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/jf$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/jf;

    if-eqz p1, :cond_f

    .line 364
    iput-object p1, v2, Lcom/google/android/libraries/places/internal/jf;->d:Lcom/google/android/libraries/places/internal/jl;

    .line 365
    iget p1, v2, Lcom/google/android/libraries/places/internal/jf;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v2, Lcom/google/android/libraries/places/internal/jf;->a:I

    sub-long p3, p7, p3

    long-to-int p1, p3

    .line 369
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 370
    iget-object p3, v1, Lcom/google/android/libraries/places/internal/jf$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast p3, Lcom/google/android/libraries/places/internal/jf;

    .line 372
    iget p4, p3, Lcom/google/android/libraries/places/internal/jf;->a:I

    or-int/lit8 p4, p4, 0x4

    iput p4, p3, Lcom/google/android/libraries/places/internal/jf;->a:I

    .line 373
    iput p1, p3, Lcom/google/android/libraries/places/internal/jf;->c:I

    .line 377
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 378
    iget-object p1, v1, Lcom/google/android/libraries/places/internal/jf$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/jf;

    if-eqz v0, :cond_e

    .line 382
    iget p3, p1, Lcom/google/android/libraries/places/internal/jf;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p1, Lcom/google/android/libraries/places/internal/jf;->a:I

    .line 384
    iget p3, v0, Lcom/google/android/libraries/places/internal/jf$b;->c:I

    .line 385
    iput p3, p1, Lcom/google/android/libraries/places/internal/jf;->b:I

    .line 389
    iget-boolean p1, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_2

    .line 390
    iget-object p1, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_2

    .line 391
    :cond_2
    iget-object p1, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 392
    iput-boolean v3, v1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 393
    iget-object p1, v1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 394
    :goto_2
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 395
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 400
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/jf;

    .line 401
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/ds;->b:Lcom/google/android/libraries/places/internal/dw;

    .line 402
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object p3

    sget-object p4, Lcom/google/android/libraries/places/internal/iy$b;->c:Lcom/google/android/libraries/places/internal/iy$b;

    .line 403
    invoke-virtual {p3, p4}, Lcom/google/android/libraries/places/internal/iy$a;->a(Lcom/google/android/libraries/places/internal/iy$b;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object p3

    .line 405
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 406
    iget-object p4, p3, Lcom/google/android/libraries/places/internal/iy$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast p4, Lcom/google/android/libraries/places/internal/iy;

    if-eqz p1, :cond_c

    .line 410
    iput-object p1, p4, Lcom/google/android/libraries/places/internal/iy;->h:Lcom/google/android/libraries/places/internal/jf;

    .line 411
    iget p1, p4, Lcom/google/android/libraries/places/internal/iy;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p4, Lcom/google/android/libraries/places/internal/iy;->a:I

    .line 415
    iget-boolean p1, p3, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_3

    .line 416
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_3

    .line 417
    :cond_3
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 418
    iput-boolean v3, p3, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 419
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 420
    :goto_3
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 421
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 426
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/iy;

    .line 427
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/iy;)V

    const-wide/16 p3, -0x1

    cmp-long p1, p5, p3

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 431
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 432
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 433
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 434
    :cond_5
    sget-object p3, Lcom/google/android/libraries/places/internal/ih;->c:Lcom/google/android/libraries/places/internal/ih;

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object p3

    check-cast p3, Lcom/google/android/libraries/places/internal/ih$a;

    .line 437
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 438
    iget-object p4, p3, Lcom/google/android/libraries/places/internal/ih$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast p4, Lcom/google/android/libraries/places/internal/ih;

    .line 440
    iget v0, p4, Lcom/google/android/libraries/places/internal/ih;->a:I

    or-int/2addr v0, v3

    iput v0, p4, Lcom/google/android/libraries/places/internal/ih;->a:I

    .line 441
    iput p1, p4, Lcom/google/android/libraries/places/internal/ih;->b:I

    .line 445
    iget-boolean p1, p3, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_6

    .line 446
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_4

    .line 447
    :cond_6
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 448
    iput-boolean v3, p3, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 449
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 450
    :goto_4
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 451
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 456
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/ih;

    .line 457
    invoke-static {}, Lcom/google/android/libraries/places/internal/ik;->a()Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p3

    sget-object p4, Lcom/google/android/libraries/places/internal/ik$b;->a:Lcom/google/android/libraries/places/internal/ik$b;

    .line 458
    invoke-virtual {p3, p4}, Lcom/google/android/libraries/places/internal/ik$a;->a(Lcom/google/android/libraries/places/internal/ik$b;)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p3

    .line 460
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 461
    iget-object p4, p3, Lcom/google/android/libraries/places/internal/ik$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast p4, Lcom/google/android/libraries/places/internal/ik;

    if-eqz p1, :cond_9

    .line 465
    iput-object p1, p4, Lcom/google/android/libraries/places/internal/ik;->f:Lcom/google/android/libraries/places/internal/ih;

    .line 466
    iget p1, p4, Lcom/google/android/libraries/places/internal/ik;->a:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p4, Lcom/google/android/libraries/places/internal/ik;->a:I

    .line 469
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/ik$c;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/libraries/places/internal/ik$a;->a(Lcom/google/android/libraries/places/internal/ik$c;)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p1

    sub-long/2addr p7, p5

    long-to-int p2, p7

    .line 470
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ik$a;->a(I)Lcom/google/android/libraries/places/internal/ik$a;

    move-result-object p1

    .line 475
    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p2, :cond_7

    .line 476
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_5

    .line 477
    :cond_7
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 478
    iput-boolean v3, p1, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 479
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 480
    :goto_5
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 481
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 486
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/ik;

    .line 487
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/ik;)V

    return-void

    .line 483
    :cond_8
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 484
    throw p1

    .line 464
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 453
    :cond_a
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 454
    throw p1

    .line 423
    :cond_b
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 424
    throw p1

    .line 409
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 397
    :cond_d
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 398
    throw p1

    .line 381
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 363
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 354
    :cond_10
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 355
    throw p1
.end method

.method public a(Lcom/google/android/libraries/places/internal/ik;)V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ds;->b:Lcom/google/android/libraries/places/internal/dw;

    .line 593
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/iy$b;->e:Lcom/google/android/libraries/places/internal/iy$b;

    .line 594
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/iy$a;->a(Lcom/google/android/libraries/places/internal/iy$b;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 597
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/iy$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v1, Lcom/google/android/libraries/places/internal/iy;

    if-eqz p1, :cond_2

    .line 601
    iput-object p1, v1, Lcom/google/android/libraries/places/internal/iy;->j:Lcom/google/android/libraries/places/internal/ik;

    .line 602
    iget p1, v1, Lcom/google/android/libraries/places/internal/iy;->a:I

    const/high16 v2, 0x800000

    or-int/2addr p1, v2

    iput p1, v1, Lcom/google/android/libraries/places/internal/iy;->a:I

    .line 606
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_0

    .line 607
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_0

    .line 608
    :cond_0
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    const/4 p1, 0x1

    .line 609
    iput-boolean p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 610
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 611
    :goto_0
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 612
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/iy;

    .line 618
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ds;->a(Lcom/google/android/libraries/places/internal/iy;)V

    return-void

    .line 614
    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 615
    throw p1

    .line 600
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a(Lcom/google/android/libraries/places/internal/iy;)V
    .locals 1

    .line 620
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/iy;)Lcom/google/android/libraries/places/internal/ib;

    move-result-object p1

    .line 621
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ds;->a:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ju;->c()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->log()V

    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
