.class public Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;
.super Ljava/lang/Object;
.source "TransceiveQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;,
        Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransceiveQueueManager"


# instance fields
.field private transceiveHandler:Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

.field private transceiveQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lbike/smarthalo/sdk/models/TransceiveTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

    invoke-direct {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveHandler:Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic lambda$addItem$6(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/models/TransceiveTask;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    invoke-interface {p2, p1}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;->onResult(I)V

    return-void
.end method

.method static synthetic lambda$clearQueue$3()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$clearQueue$4(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Ljava/lang/Runnable;)V
    .locals 2

    .line 53
    :cond_0
    :goto_0
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/sdk/models/TransceiveTask;

    .line 55
    iget-object v1, v0, Lbike/smarthalo/sdk/models/TransceiveTask;->cb:Lbike/smarthalo/sdk/models/TransceiveCallback;

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, v0, Lbike/smarthalo/sdk/models/TransceiveTask;->cb:Lbike/smarthalo/sdk/models/TransceiveCallback;

    const-string v1, "Timeout"

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/models/TransceiveCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$getQueueSize$5(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic lambda$peekQueue$0(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/sdk/models/TransceiveTask;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;->onResult(Lbike/smarthalo/sdk/models/TransceiveTask;I)V

    return-void
.end method

.method static synthetic lambda$pollQueue$1(Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$pollQueue$2(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/sdk/models/TransceiveTask;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;->onResult(Lbike/smarthalo/sdk/models/TransceiveTask;I)V

    return-void
.end method


# virtual methods
.method public addItem(Lbike/smarthalo/sdk/models/TransceiveTask;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V
    .locals 2
    .param p2    # Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveHandler:Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;

    invoke-direct {v1, p0, p1, p2}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;-><init>(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/models/TransceiveTask;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearQueue()V
    .locals 1

    .line 47
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$E4r_54PZoUvKDtjXyyENoNh4KLk;->INSTANCE:Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$E4r_54PZoUvKDtjXyyENoNh4KLk;

    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->clearQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearQueue(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveHandler:Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$XUOAusizTUz0hJeI_w5augzSZu0;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$XUOAusizTUz0hJeI_w5augzSZu0;-><init>(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 30
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveHandler:Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->quit()V

    return-void
.end method

.method public getQueueSize(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveHandler:Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$6yuuf0fr4MYxgXBi4ViKA38w9ys;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$6yuuf0fr4MYxgXBi4ViKA38w9ys;-><init>(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public peekQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V
    .locals 2
    .param p1    # Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveHandler:Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$tsBeG5r5JOWPY7PdTsLm9LGRZwM;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$tsBeG5r5JOWPY7PdTsLm9LGRZwM;-><init>(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pollQueue()V
    .locals 1

    .line 38
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$APwqaDx7qLcFZDYtzJdzmf6x3Vo;->INSTANCE:Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$APwqaDx7qLcFZDYtzJdzmf6x3Vo;

    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->pollQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    return-void
.end method

.method public pollQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V
    .locals 2
    .param p1    # Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->transceiveHandler:Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$3CZojSJcWIJsePzh9SNWZrFsVrg;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$3CZojSJcWIJsePzh9SNWZrFsVrg;-><init>(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
