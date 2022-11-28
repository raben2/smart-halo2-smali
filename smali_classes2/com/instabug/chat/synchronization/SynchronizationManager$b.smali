.class Lcom/instabug/chat/synchronization/SynchronizationManager$b;
.super Ljava/lang/Object;
.source "SynchronizationManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/synchronization/SynchronizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/synchronization/SynchronizationManager;


# direct methods
.method constructor <init>(Lcom/instabug/chat/synchronization/SynchronizationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$b;->a:Lcom/instabug/chat/synchronization/SynchronizationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager$b;->a:Lcom/instabug/chat/synchronization/SynchronizationManager;

    invoke-virtual {p1}, Lcom/instabug/chat/synchronization/SynchronizationManager;->sync()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/synchronization/SynchronizationManager$b;->a(Ljava/lang/Long;)V

    return-void
.end method
