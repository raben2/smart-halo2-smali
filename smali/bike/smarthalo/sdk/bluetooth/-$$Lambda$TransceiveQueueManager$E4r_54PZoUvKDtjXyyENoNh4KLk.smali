.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$E4r_54PZoUvKDtjXyyENoNh4KLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$E4r_54PZoUvKDtjXyyENoNh4KLk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$E4r_54PZoUvKDtjXyyENoNh4KLk;

    invoke-direct {v0}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$E4r_54PZoUvKDtjXyyENoNh4KLk;-><init>()V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$E4r_54PZoUvKDtjXyyENoNh4KLk;->INSTANCE:Lbike/smarthalo/sdk/bluetooth/-$$Lambda$TransceiveQueueManager$E4r_54PZoUvKDtjXyyENoNh4KLk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->lambda$clearQueue$3()V

    return-void
.end method
