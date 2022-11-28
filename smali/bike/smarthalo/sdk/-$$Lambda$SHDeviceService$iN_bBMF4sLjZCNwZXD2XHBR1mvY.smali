.class public final synthetic Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$iN_bBMF4sLjZCNwZXD2XHBR1mvY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/SHDeviceService;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$iN_bBMF4sLjZCNwZXD2XHBR1mvY;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    iput-boolean p2, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$iN_bBMF4sLjZCNwZXD2XHBR1mvY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$iN_bBMF4sLjZCNwZXD2XHBR1mvY;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    iget-boolean v1, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$iN_bBMF4sLjZCNwZXD2XHBR1mvY;->f$1:Z

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/SHDeviceService;->lambda$cleanUpDeviceConnection$0(Lbike/smarthalo/sdk/SHDeviceService;Z)V

    return-void
.end method
