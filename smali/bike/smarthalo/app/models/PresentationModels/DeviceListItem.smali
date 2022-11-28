.class public Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;
.super Ljava/lang/Object;
.source "DeviceListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;
    }
.end annotation


# instance fields
.field public bleDevice:Lbike/smarthalo/sdk/models/BleDevice;

.field public description:Ljava/lang/String;

.field public itemType:Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->description:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->bleDevice:Lbike/smarthalo/sdk/models/BleDevice;

    .line 17
    iput-object p3, p0, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->itemType:Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;

    return-void
.end method
