.class public final synthetic Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$aQ7f3P5c6Vmh5ZTiRy-bS5F-sYE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/SHDeviceService;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$aQ7f3P5c6Vmh5ZTiRy-bS5F-sYE;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    return-void
.end method


# virtual methods
.method public final onResult(I)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$aQ7f3P5c6Vmh5ZTiRy-bS5F-sYE;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->lambda$transceive$5(Lbike/smarthalo/sdk/SHDeviceService;I)V

    return-void
.end method
