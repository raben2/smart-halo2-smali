.class public Lcom/instabug/chat/cache/a;
.super Ljava/lang/Object;
.source "CacheUtility.java"


# direct methods
.method public static a()V
    .locals 1

    .line 2
    new-instance v0, Lcom/instabug/chat/cache/a$b;

    invoke-direct {v0}, Lcom/instabug/chat/cache/a$b;-><init>()V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/chat/cache/a$a;

    invoke-direct {v0, p0}, Lcom/instabug/chat/cache/a$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/chat/cache/a$c;

    invoke-direct {v0}, Lcom/instabug/chat/cache/a$c;-><init>()V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method
