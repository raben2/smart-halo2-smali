.class public Lcom/instabug/library/util/threading/c;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SingleThreadPoolExecutor.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/library/util/threading/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/instabug/library/util/threading/b;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, Lcom/instabug/library/util/threading/b;-><init>(I)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/util/threading/d;)Lcom/instabug/library/util/threading/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/library/util/threading/c;->b:Lcom/instabug/library/util/threading/d;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/instabug/library/util/threading/c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/threading/c;->a:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/instabug/library/util/threading/c;->b:Lcom/instabug/library/util/threading/d;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/instabug/library/util/threading/c;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/instabug/library/util/threading/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
