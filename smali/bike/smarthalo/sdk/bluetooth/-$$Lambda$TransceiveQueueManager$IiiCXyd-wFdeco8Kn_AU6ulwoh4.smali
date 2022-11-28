.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

.field private final synthetic f$1:Lbike/smarthalo/sdk/models/TransceiveTask;

.field private final synthetic f$2:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/models/TransceiveTask;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;->f$0:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;->f$1:Lbike/smarthalo/sdk/models/TransceiveTask;

    iput-object p3, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;->f$2:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;->f$0:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;->f$1:Lbike/smarthalo/sdk/models/TransceiveTask;

    iget-object v2, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$IiiCXyd-wFdeco8Kn_AU6ulwoh4;->f$2:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;

    invoke-static {v0, v1, v2}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->lambda$addItem$6(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;Lbike/smarthalo/sdk/models/TransceiveTask;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V

    return-void
.end method
