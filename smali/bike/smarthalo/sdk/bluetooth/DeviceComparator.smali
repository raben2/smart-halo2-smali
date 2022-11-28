.class public Lbike/smarthalo/sdk/bluetooth/DeviceComparator;
.super Ljava/lang/Object;
.source "DeviceComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lbike/smarthalo/sdk/models/BleDevice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/sdk/models/BleDevice;)I
    .locals 5

    .line 17
    iget-object v0, p1, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p2, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p2, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p1, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p2, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v0, v4, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p1, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lbike/smarthalo/sdk/models/BleDevice;

    check-cast p2, Lbike/smarthalo/sdk/models/BleDevice;

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/sdk/bluetooth/DeviceComparator;->compare(Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/sdk/models/BleDevice;)I

    move-result p1

    return p1
.end method
