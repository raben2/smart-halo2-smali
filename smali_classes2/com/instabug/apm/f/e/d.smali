.class public Lcom/instabug/apm/f/e/d;
.super Ljava/lang/Object;
.source "UiTraceHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/f/e/c;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x10
.end annotation

.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 13
    invoke-static {}, Lcom/instabug/apm/e/a;->J()Lcom/instabug/apm/b/a/e/a;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/instabug/apm/e/a;->E()Lcom/instabug/apm/b/a/d/c;

    move-result-object v1

    .line 15
    invoke-interface {v0}, Lcom/instabug/apm/b/a/e/a;->a()V

    .line 16
    invoke-interface {v1}, Lcom/instabug/apm/b/a/d/c;->a()V

    return-void
.end method

.method public a(Landroid/app/Activity;JJLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/instabug/apm/f/e/e/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->k()Lcom/instabug/apm/f/e/e/a;

    move-result-object v8

    const-string v0, ""

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v8

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/instabug/apm/f/e/e/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/instabug/apm/f/e/e/a;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/apm/f/e/e/a;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/instabug/apm/f/e/e/a;->a(Landroid/app/Activity;J)V

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/instabug/apm/e/a;->I()Lcom/instabug/apm/f/e/b;

    move-result-object v0

    .line 18
    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/f/e/b;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->I()Lcom/instabug/apm/f/e/b;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/instabug/apm/f/e/b;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method
