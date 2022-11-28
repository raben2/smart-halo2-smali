.class public final synthetic Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$1$U6m4KLFOVLKB5lK-9Ps376hoeSI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/SHDeviceService$2$1;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/SHDeviceService$2$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$1$U6m4KLFOVLKB5lK-9Ps376hoeSI;->f$0:Lbike/smarthalo/sdk/SHDeviceService$2$1;

    return-void
.end method


# virtual methods
.method public final onDeviceInformationReady(Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$1$U6m4KLFOVLKB5lK-9Ps376hoeSI;->f$0:Lbike/smarthalo/sdk/SHDeviceService$2$1;

    invoke-static {v0, p1}, Lbike/smarthalo/sdk/SHDeviceService$2$1;->lambda$onSuccess$0(Lbike/smarthalo/sdk/SHDeviceService$2$1;Lbike/smarthalo/sdk/models/DeviceInformation;)V

    return-void
.end method
