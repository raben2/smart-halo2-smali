.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$APwqaDx7qLcFZDYtzJdzmf6x3Vo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$APwqaDx7qLcFZDYtzJdzmf6x3Vo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$APwqaDx7qLcFZDYtzJdzmf6x3Vo;

    invoke-direct {v0}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$APwqaDx7qLcFZDYtzJdzmf6x3Vo;-><init>()V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$APwqaDx7qLcFZDYtzJdzmf6x3Vo;->INSTANCE:Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$APwqaDx7qLcFZDYtzJdzmf6x3Vo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 0

    invoke-static {p1, p2}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->lambda$pollQueue$1(Lbike/smarthalo/sdk/models/TransceiveTask;I)V

    return-void
.end method
