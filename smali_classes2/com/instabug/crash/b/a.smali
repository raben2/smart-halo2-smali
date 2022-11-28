.class public Lcom/instabug/crash/b/a;
.super Ljava/lang/Object;
.source "CrashDatabaseBuffer.java"


# direct methods
.method public static a()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/crash/b/b;->a()V

    .line 2
    invoke-static {}, Lcom/instabug/crash/e/a;->c()Lcom/instabug/crash/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/crash/e/a;->a(Z)V

    return-void
.end method

.method public static b()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/crash/b/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/crash/c/a;

    .line 6
    invoke-virtual {v2}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instabug/library/model/State;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/instabug/crash/c/a;->f()Lcom/instabug/library/model/State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instabug/library/model/State;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/instabug/crash/b/b;->a(Landroid/net/Uri;)V

    .line 9
    :cond_0
    invoke-static {v2}, Lcom/instabug/crash/b/b;->a(Lcom/instabug/crash/c/a;)V

    .line 10
    invoke-virtual {v2}, Lcom/instabug/crash/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/crash/b/b;->a(Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
