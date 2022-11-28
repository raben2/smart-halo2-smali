.class public Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;
.super Ljava/lang/Object;
.source "SHDeviceConnectionEvent.java"


# static fields
.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "device_id"

.field private static final DEVICE_VERSION:Ljava/lang/String; = "device_version"

.field private static final EVENT_TYPE_KEY:Ljava/lang/String; = "event_type"

.field private static final LOCK_SERIAL_KEY:Ljava/lang/String; = "lock_serial"

.field private static final PCBA_SERIAL:Ljava/lang/String; = "pcba_serial"

.field private static final PRODUCT_SERIAL:Ljava/lang/String; = "product_serial"

.field private static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# instance fields
.field public device_id:Ljava/lang/String;

.field public device_version:Ljava/lang/String;

.field public event_type:Ljava/lang/String;

.field public lock_serial:Ljava/lang/String;

.field public pcba_serial:Ljava/lang/String;

.field public product_serial:Ljava/lang/String;

.field public user_id:I


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "user_id"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->user_id:I

    const-string v0, "event_type"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->event_type:Ljava/lang/String;

    const-string v0, "device_id"

    .line 46
    iget-object v1, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->device_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->device_id:Ljava/lang/String;

    const-string v0, "device_version"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->device_version:Ljava/lang/String;

    const-string v0, "product_serial"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->product_serial:Ljava/lang/String;

    const-string v0, "pcba_serial"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->pcba_serial:Ljava/lang/String;

    const-string v0, "lock_serial"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->lock_serial:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lbike/smarthalo/app/models/DeviceConnectionType;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->user_id:I

    .line 34
    invoke-virtual {p2}, Lbike/smarthalo/app/models/DeviceConnectionType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->event_type:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 36
    invoke-virtual {p4}, Lbike/smarthalo/sdk/models/DeviceModel;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->device_version:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->device_id:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->product_serial:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->pcba_serial:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->lock_serial:Ljava/lang/String;

    return-void
.end method

.method public static getForgetDeviceEvent(ILjava/lang/String;)Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;
    .locals 9

    .line 76
    new-instance v8, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lbike/smarthalo/app/models/DeviceConnectionType;->FORGET:Lbike/smarthalo/app/models/DeviceConnectionType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;-><init>(Ljava/lang/Integer;Lbike/smarthalo/app/models/DeviceConnectionType;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static getSH1PairingEvent(Ljava/lang/Integer;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;
    .locals 9
    .param p2    # Lbike/smarthalo/sdk/models/DeviceSerials;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    new-instance v8, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;

    sget-object v2, Lbike/smarthalo/app/models/DeviceConnectionType;->PAIR:Lbike/smarthalo/app/models/DeviceConnectionType;

    sget-object v4, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lbike/smarthalo/sdk/models/DeviceSerials;->product:Ljava/lang/String;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p2, Lbike/smarthalo/sdk/models/DeviceSerials;->pcba:Ljava/lang/String;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    if-eqz p2, :cond_2

    iget-object p2, p2, Lbike/smarthalo/sdk/models/DeviceSerials;->lock:Ljava/lang/String;

    move-object v7, p2

    goto :goto_2

    :cond_2
    move-object v7, v0

    :goto_2
    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;-><init>(Ljava/lang/Integer;Lbike/smarthalo/app/models/DeviceConnectionType;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static getSH2PairingEvent(Ljava/lang/Integer;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;
    .locals 9
    .param p2    # Lbike/smarthalo/sdk/models/DeviceSerials;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    new-instance v8, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;

    sget-object v2, Lbike/smarthalo/app/models/DeviceConnectionType;->PAIR:Lbike/smarthalo/app/models/DeviceConnectionType;

    sget-object v4, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lbike/smarthalo/sdk/models/DeviceSerials;->product:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;-><init>(Ljava/lang/Integer;Lbike/smarthalo/app/models/DeviceConnectionType;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public asPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 84
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "user_id"

    .line 86
    iget v2, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->user_id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "event_type"

    .line 87
    iget-object v2, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->event_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    .line 88
    iget-object v2, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_version"

    .line 89
    iget-object v2, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->device_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_serial"

    .line 90
    iget-object v2, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->product_serial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pcba_serial"

    .line 91
    iget-object v2, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->pcba_serial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lock_serial"

    .line 92
    iget-object v2, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->lock_serial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->event_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->user_id:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->device_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
