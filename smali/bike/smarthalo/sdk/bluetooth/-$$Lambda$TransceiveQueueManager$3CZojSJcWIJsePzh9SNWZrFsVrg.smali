.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$3CZojSJcWIJsePzh9SNWZrFsVrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

.field private final synthetic f$1:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$3CZojSJcWIJsePzh9SNWZrFsVrg;->f$0:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$3CZojSJcWIJsePzh9SNWZrFsVrg;->f$1:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$3CZojSJcWIJsePzh9SNWZrFsVrg;->f$0:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$3CZojSJcWIJsePzh9SNWZrFsVrg;->f$1:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->lambda$pollQueue$2(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    return-void
.end method
