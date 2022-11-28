.class Lcom/instabug/chat/synchronization/SynchronizationManager$d;
.super Ljava/lang/Object;
.source "SynchronizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/synchronization/SynchronizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/instabug/chat/synchronization/SynchronizationManager;


# direct methods
.method constructor <init>(Lcom/instabug/chat/synchronization/SynchronizationManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$d;->b:Lcom/instabug/chat/synchronization/SynchronizationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$d;->b:Lcom/instabug/chat/synchronization/SynchronizationManager;

    iget-object v1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$d;->b:Lcom/instabug/chat/synchronization/SynchronizationManager;

    invoke-static {v2}, Lcom/instabug/chat/synchronization/SynchronizationManager;->access$600(Lcom/instabug/chat/synchronization/SynchronizationManager;)Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instabug/chat/synchronization/SynchronizationManager;->access$700(Lcom/instabug/chat/synchronization/SynchronizationManager;Landroid/content/Context;Lio/reactivex/functions/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$d;->b:Lcom/instabug/chat/synchronization/SynchronizationManager;

    invoke-static {v0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->access$600(Lcom/instabug/chat/synchronization/SynchronizationManager;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-static {}, Lcom/instabug/chat/settings/a;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception was occurred,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
