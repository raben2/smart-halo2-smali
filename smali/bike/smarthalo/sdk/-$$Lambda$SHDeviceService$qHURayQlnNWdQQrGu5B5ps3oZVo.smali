.class public final synthetic Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$qHURayQlnNWdQQrGu5B5ps3oZVo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/SHDeviceService;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$qHURayQlnNWdQQrGu5B5ps3oZVo;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$qHURayQlnNWdQQrGu5B5ps3oZVo;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceService;->lambda$hasEnteredBootloader$2(Lbike/smarthalo/sdk/SHDeviceService;)V

    return-void
.end method
