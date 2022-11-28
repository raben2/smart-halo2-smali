.class public final synthetic Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$ofyn-XLj5jbzPZI65vTFVyheEks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/SHDeviceService$2;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/SHDeviceService$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$ofyn-XLj5jbzPZI65vTFVyheEks;->f$0:Lbike/smarthalo/sdk/SHDeviceService$2;

    return-void
.end method


# virtual methods
.method public final onDeviceInformationReady(Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$ofyn-XLj5jbzPZI65vTFVyheEks;->f$0:Lbike/smarthalo/sdk/SHDeviceService$2;

    invoke-static {v0, p1}, Lbike/smarthalo/sdk/SHDeviceService$2;->lambda$onSuccess$0(Lbike/smarthalo/sdk/SHDeviceService$2;Lbike/smarthalo/sdk/models/DeviceInformation;)V

    return-void
.end method
