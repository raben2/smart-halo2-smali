.class Lcom/instabug/chat/synchronization/SynchronizationManager$c;
.super Ljava/lang/Object;
.source "SynchronizationManager.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/synchronization/SynchronizationManager;->syncMessages(Landroid/content/Context;Lio/reactivex/functions/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Lcom/instabug/library/network/RequestResponse;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/reactivex/functions/Consumer;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/instabug/chat/synchronization/SynchronizationManager;


# direct methods
.method constructor <init>(Lcom/instabug/chat/synchronization/SynchronizationManager;Landroid/content/Context;Lio/reactivex/functions/Consumer;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->d:Lcom/instabug/chat/synchronization/SynchronizationManager;

    iput-object p2, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->b:Lio/reactivex/functions/Consumer;

    iput-object p4, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/RequestResponse;)V
    .locals 3
    .param p1    # Lcom/instabug/library/network/RequestResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->d:Lcom/instabug/chat/synchronization/SynchronizationManager;

    iget-object v1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->b:Lio/reactivex/functions/Consumer;

    invoke-static {v0, p1, v1, v2}, Lcom/instabug/chat/synchronization/SynchronizationManager;->access$300(Lcom/instabug/chat/synchronization/SynchronizationManager;Lcom/instabug/library/network/RequestResponse;Landroid/content/Context;Lio/reactivex/functions/Consumer;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->d:Lcom/instabug/chat/synchronization/SynchronizationManager;

    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->access$400(Lcom/instabug/chat/synchronization/SynchronizationManager;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->d:Lcom/instabug/chat/synchronization/SynchronizationManager;

    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->b:Lio/reactivex/functions/Consumer;

    invoke-static {p1, v0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->access$500(Lcom/instabug/chat/synchronization/SynchronizationManager;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/instabug/library/network/RequestResponse;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/synchronization/SynchronizationManager$c;->a(Lcom/instabug/library/network/RequestResponse;)V

    return-void
.end method
